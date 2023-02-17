---------------------------------------------------------------------------------------------------------------
--- FUNCIONES PARA EL MANEJO DE CADENAS
---------------------------------------------------------------------------------------------------------------
-- 1) char_length(string)       .- RETORNA LA LONGITUD DEL TEXO.
-- 2) lower(string)             .- CONVIERTE UN CADENA EN MINISCULA
-- 3) upper(string)             .- CONVIERTE UN CADENA EN MAYUSCULA
-- 4) substring(cadena ,posicion_inicio , longitud )    .- EXTRAE UNA PARTE DE UNA CADENA
-- 5) now()                     .- RETORNA LA FECHA Y HORA ACTUAL DEL SISTEMA
-- 6) extract(valor from timestamp)     .- EXTRAE UNA PARTE DE UNA FECHA
-- 7) cast(valor as nuevo_tipo de dato) .- RETORNA UN NUEVO TIPO DE DATOS
-- 8) concat([valor_item])      .- CONCATENA DOS A MAS CADENAS
-- 9) replace(valor,palabra_remplazar,remplazar_con)   .- REMPLAZA UNA VALOR POR OTRO.
-- 10) initcap(string)          .- CONVIERTE EN MAYUSCULA LA PRIMERA PALABRA

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
select titulo, char_length(titulo) as longitud_total from dbo.adm_libro;
select cast(lower('HOLA MUNDO') as varchar);
select now();
select extract(year from now());
select concat('hola',' ','mundo');
select initcap('hola mundo');
select substring('hola mundo',6,10);

-- 1.2) EJEMPLO WHERE
select titulo, char_length(titulo) as longitud_total from dbo.adm_libro
where char_length(titulo) > 30;

-- 2)  GENERAR UN REPORTE DEL TOTAL DE LIBROS POR EDITORIAL Y ORDENARLOS POR EL NOMBRE DEL EDITORIAL
select ed.nombre as editorial,count(li.titulo) from dbo.adm_libro li, dbo.adm_editorial ed
where li.id_editorial = ed.id_editorial
group by 1
order by 1 asc;

-- 3)  GENERAR UN REPORTE DEL TOTAL DE LIBROS POR EDITORIAL Y ORDENADOS POR EL NOMBRE DEL EDITORIAL (MOSTAR SOLO AQUELLOS EDITORIALES QUE TENGAN LIBROS MAYORES A DOS registros)
select ed.nombre as editorial,count(li.titulo) 
from dbo.adm_libro li, dbo.adm_editorial ed
where li.id_editorial = ed.id_editorial
group by 1
having count(li.titulo) > 2
order by 1 asc;

-- 4) GENERAR UN REPORTE DEL TOTAL DE EJEMPLARES POR BIBLIOTECA Y ZONA Y ORDENAR
select bi.nombre as biblioteca,zo.descripcion as zona,count(ej.codigo) 
from dbo.adm_biblioteca bi, dbo.adm_zona zo, dbo.adm_ejemplar ej
where bi.id_biblioteca = zo.id_biblioteca and zo.id_zona = ej.id_zona
group by 1,2
order by 1,2;

-- 5) GENERAR UN REPORTE DEL TOTAL DE EJEMPLARES POR BIBLIOTECA Y ZONA Y ORDENAR (MOSTRAR AQUELLAS ZONAS QUE TENGAN MAS DE 5 EJEMPLARES)
select bi.nombre as biblioteca,zo.descripcion as zona,count(ej.codigo) 
from dbo.adm_biblioteca bi, dbo.adm_zona zo, dbo.adm_ejemplar ej
where bi.id_biblioteca = zo.id_biblioteca and zo.id_zona = ej.id_zona
group by 1,2
having count(ej.codigo) > 5
order by 1,2;
