    
    # ########################################################################
    #      CODIGO QUE AUTOMOATIZA LA DESCAGRA Y ORGANIZACION DE LA ENOE
    #                       EN TRES LINEAS!!!
    # ########################################################################
    
    #------------------------------------------------------------------------
    #   Autora: Lizzeth Gomez Rodriguez
    #   Fecha: 27/04/2021
    #------------------------------------------------------------------------
    
    
    # -----------------------------------------------------------------------
    #                     1) DESCRIPCION DEL CODIGO
    # -----------------------------------------------------------------------
    # El codigo contiene una funcion que descarga desde la web de INEGI, descomprime y 
    # organiza la ENOE por trimestres y anos que se desean, incluye ETOE
    # para segundo trimestre del 2020 y ENOE_N para el resto de los trimestres
    
    
    # Las bases las descarga el codigo automaticamente de la siguiente página:
    # https://www.inegi.org.mx/programas/enoe/15ymas/#Microdatos
    
    # Este codigo tambien organiza en carpetas por años y trimestres los archivos
    # Este codigo usa la extensión por default .dta que es extensión de archivo para usar en STATA
    # pero se puede descargar con la extension que se desee (dbf,csv, y sav)
    
    # Esta funcion fue creada previamente
    # y su script (importar_enoe.R) debe estar en la carpeta del directorio
    
    # -----------------------------------------------------------------------
    #                               PASOS A SEGUIR:
    # -----------------------------------------------------------------------
    # 1. Modifique el directrio de trabajo en donde se guardaran las bases:
    # 2. Asegurese que el archivo "importar_enoe.R" se encuentre
    # dentro del directorio.
    # 3. Modifique los anos de interes, trimestres, y extension
    # Por default los trimestres son 1:4
    # y la extension es dta.
    
     
    bases <- "C:/Users/GOMEZ/Documents/base_enoe" # 1. MODIFICAR ESTE DORECTORIO
    source(paste0(bases,"/importar_enoe.R")) # llamamos a la funcion
    importar_enoe(bases, 2017:2019) # 3.MODIFICAR ANOS DE INTERES (trimestres y extension son opcionales)
    
    # Para revisar los parametros de la funcion a mayor detalle y la funcion misma
    # ejecutar el siguiente codigo:
    View(importar_enoe) 
    
   
    
    
    
    
    
    