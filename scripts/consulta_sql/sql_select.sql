---------------------------------------------------------------------------------------------------------------
--- INSTRUCCIÓN BÁSICA SELECT
---------------------------------------------------------------------------------------------------------------
-- :: CONSULTAS SQL .- Son operaciones sobre la base de datos ejemplo: select, insert, update, delete, etc.
-- :: SELECT 		.- Esta instruccion permite recuperar datos
-- :: (*) 			.- Recuperar todo los campos de un ficheros o tabla
-- :: FROM 			.- Ficheros o tablas de donde se recuperaran los datos.
-- :: SELECT * FROM 'NOMBRE_TABLA'
-- :: AS (ALIAS)	.- Son titulos alternativos para los nombres de la columna.
-- :: COLUMNA COMPUTADA .- Son el resultado de ejecutar algunas operaciones con las columnas de una tabla.

---------------------------------------------- ****EJEMPLOS PRACTIVOS****---------------------------------------
-- 1) RETORNAR TODOS LOS DATOS DE LA TABLA ADM_LIBRO DE LA BASES DE DATOS DB_BIBLIOTECA.
select * from dbo.adm_libro;

-- 2) RETIRNAR LAS COLUMNAS ID_AUTOR, NOMBRE Y ESTADO DE LA TABLA ADM_AUTOR;
select id_autor, nombre, estado from dbo.adm_autor;

-- 3) RETORNAR EL CAMPO NOMBRE DE LA TABLA ADM_EDITORIAL, AL CAMPO NOMBRE ASIGNARLE UN ALIAS DE 'Editorial'.
select nombre as editorial from dbo.adm_editorial;

-- 4) RETORNAR LAS COLUMNAS ID_AUTOR, Y EL CAMPO CONCATENADO 'NOMBRE_COMPLETO' = NOMBRE + APELLIDO DE LA TABLA ADM_AUTOR.
select id_autor, nombre || ', ' || apellidos as nombre_completo from dbo.adm_autor;