

    importar_enoe <- function(directorio, anos, trimestres = 1:4, extension = "dta"){
     
    # --------------------------------------------------------------------------   
    # DESCRIPCION DE LA FUNCION    
    # Extrae los archivos de la Encuesta Nacional de Ocupacion y Empleo (ENOE),
    # La ETOE para el caso del segundo trimestre del 2020,
    # y la ENOE_N para el resto de los trimestres del 2020.
    # Los archivos los comprime en un zip
    # luego los descomprime y organiza en carpetas por año y trimestre
    
    # --------------------------------------------------------------------------
    # PARAMETROS DE LA FUNCION    
    # directorio: carpeta global en donde se van a guardar las bases
    # anos: anos de interes puden usarse vectores para anos no continuos
    # trimestres: trimestres de interes, por default son 1:4 pero,
    # puede usar un vector para trimestres no continuos:  c(2,4)
    # extension: indica la extension del archivo, por deafult es 'dta', pero
    # puede descargarse en: dbf, csv y sav
        
        for(year in anos){
            if(year < 2005){
                print("La ENOE es una encuesta que se levanto partir de 2005, para informacion de anos anteriores consulte la ENE")
            }
            
            else{
                
                ano <- paste0(bases,"/", year)
                ano_folder <- dir.create(ano)
                    
                for(trim in trimestres){
        
                    # Este condicional es para usar la ETOE
                    if(year == 2020 & trim ==2){
                        print("Periodo de Pandemia, por lo que la encuesta para 
                              este trimestre del año es la ETOE cuya extensión es .DBF")
                        mes <- c("abril", "mayo", "junio")
                        for(month in mes){
                            months <-paste0(ano,"/",month)
                            dir.create(months)
                            date <- paste0("etoe_2020_", month,"_dbf.zip")
                            file <- paste0(ano,"/",date)
                            url <- paste0("https://www.inegi.org.mx/contenidos/investigacion/etoe/microdatos/",date)
                            download.file(url = url, destfile = file)
                            unzip(file, exdir = months)
                            file.remove(file)    
                        }
                    }
                    
                    else{
                        trimestre <- paste0(ano,"/",trim)
                        trimestre_folder <- dir.create(trimestre)
    
                        date <- paste0(year,"trim",trim,"_",extension,".zip")
                        file <- paste0(bases,"/", date)
                        url <- paste0("https://www.inegi.org.mx/contenidos/programas/enoe/15ymas/microdatos/",date)
                        download.file(url = url, destfile = file)
                        unzip(file, exdir = trimestre)
                        file.remove(file)
                    }
                    
                }
            }
        }
    }
