# Automatizacion_ENOE
Repositorio con códigos para para automatizar la descarga, organización y armado de la [ENOE](https://www.inegi.org.mx/programas/enoe/15ymas/), incluyendo la [ETOE](https://www.inegi.org.mx/investigacion/etoe/) para el segundo trimestre del 2020 y la ENOE_N para el resto de los trimestres del 2020.

Por ahora el repositorio cuenta con la **automatizacion de la descarga de la ENOE** desde la web de INEGI incluyendo la ETOE para el segundo trimestre del 2020 y la ENOE_N para el resto de los trimestres del 2020, a su vez la función también las organiza en carpetas por año y trimestre.

Para ello se creo una función llamada **"importar_enoe.R"** la cual permite seleccionar los años de interés, los trimestres de interés y hasta la extensión del archivo a importar (dta, dbf, csv, sav).
Por default la función descarga los cuatro trimestres y la extensión "dta" que es un archivo para STATA (Está claro que estos parametros son modificables).

## Instrucciones:
1. Descargue el repositorio que contiene los dos archivos: [funcion_enoe.R](https://github.com/LIZZETHGOMEZ/Automatizacion_ENOE/blob/main/funcion_enoe.R) e [importar_enoe.R](https://github.com/LIZZETHGOMEZ/Automatizacion_ENOE/blob/main/importar_enoe.R)
2. Ubique un solo directorio donde desea guardar las bases de la ENOE y en ese mismo directorio añada el archivo [importar_enoe.R](https://github.com/LIZZETHGOMEZ/Automatizacion_ENOE/blob/main/importar_enoe.R)
3. Siga las intrucciones del codigo [funcion_enoe.R](https://github.com/LIZZETHGOMEZ/Automatizacion_ENOE/blob/main/funcion_enoe.R)
