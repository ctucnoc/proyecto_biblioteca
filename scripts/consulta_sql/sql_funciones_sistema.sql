---------------------------------------------------------------------------------------------------------------
--- FUNCIONES PARA EL MANEJO DE CADENAS
---------------------------------------------------------------------------------------------------------------
-- 1) char_length(string)       .- RETORNA LA LONGITUD DEL TEXO.
-- 2) lower(string)             .- CONVIERTE UN CADENA EN MINISCULA
-- 3) upper(string)             .- CONVIERTE UN CADENA EN MAYUSCULA
-- 4) substring(cadena ,posicion_inicio , longitud )
-- 5) substr(cadena ,posicion_inicio , longitud)
-- 6) now()                     .- RETORNA LA FECHA Y HORA ACTUAL DEL SISTEMA
-- 7) extract(valor from timestamp)     .- EXTRAE UNA PARTE DE UNA FECHA
-- 8) cast(valor as nuevo_tipo de dato) .- RETORNA UN NUEVO TIPO DE DATOS
-- 9) concat([valor_item])      .- CONCATENA DOS A MAS CADENAS
-- 10) replace(valor,palabra_remplazar,remplazar_con)   .- REMPLAZA UNA VALOR POR OTRO.
-- 11) initcap(string)          .- CONVIERTE EN MAYUSCULA LA PRIMERA PALABRA

---------------------------------------------------------------------------------------------------------------
--- FUNCIONES DE AGREGACION
---------------------------------------------------------------------------------------------------------------
-- *) LAS FUNCIONES DE AGREGACIÓN PERMITEN REALIZAR VARIAS OPERACIONES SOBRE LOS DATOS DE UNA BASE DE DATOS.
-- 1) COUNT                     .- NOS DEVUELVE EL NUMERO TOTAL DE LAS FILAS SELECCIONADAS
-- 2) SUM                       .- SUMA LOS VALORES DE UNA COLUMNA
-- 3) MIN                       .- NOS DEVUELVE EL VALOR MINIMO DE UNA COLUMNA
-- 4) MAX                       .- NOS DEVUELVE EL VALOR MAXIMO DE UNA COLUMNA
-- 5) AVG                       .- NOS DEVUELVE EL VALOR MEDIO DE UNA COLUMNA

-- =============================================== WHERE Y HAVING ==============================================
-- WHERE                        .- SOLO SE APLICA A REGISTROS INDIVIDUALES
-- HAVING                       .- SE APLICA A UN GRUPO DE REGISTROS
-- ============================================= WHERE Y HAVING FIN =============================================

---------------------------------------------- ****EJEMPLOS PRACTICOS****---------------------------------------
-- 1) EJEMPLOS DE FUNCIONES DEL SISTEMA
-- 1.1) EJEMPLO FUNCION DEL SISTEMAS

-- 1.2) EJEMPLO WHERE

-- 2)  GENERAR UN REPORTE DEL TOTAL DE LIBROS POR EDITORIAL Y ORDENARLOS POR EL NOMBRE DEL EDITORIAL

-- 3)  GENERAR UN REPORTE DEL TOTAL DE LIBROS POR EDITORIAL Y ORDENADOS POR EL NOMBRE DEL EDITORIAL (MOSTAR SOLO AQUELLOS EDITORIALES QUE TENGAN LIBROS MAYORES A DOS registros)

-- 4) GENERAR UN REPORTE DEL TOTAL DE EJEMPLARES POR BIBLIOTECA Y ZONA Y ORDENAR

-- 4) GENERAR UN REPORTE DEL TOTAL DE EJEMPLARES POR BIBLIOTECA Y ZONA Y ORDENAR (MOSTRAR AQUELLAS ZONAS QUE TENGAN MAS DE 5 EJEMPLARES)
