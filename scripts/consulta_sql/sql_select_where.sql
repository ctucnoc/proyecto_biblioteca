---------------------------------------------------------------------------------------------------------------
--- INSTRUCCIÓN SELECT WHERE
---------------------------------------------------------------------------------------------------------------
-- :: Las consultas condicionales nos permiten recuperar registros mediante condiciones lógica 
-- :: WHERE 		.- Condiciones que tienen que cumplir los valores de campo para que los registros sean incluidos en los resultados.
-- :: ORDER BY      .- Expresión que realiza el ordenamiento de los registros, estos ordenamientos puden ser: ASC / DESC.

-- ============================================ OPERADORES LOGICOS: ============================================
----- A) AND        .- es el "y" logico. Evalua dos condiciones y devuelve un valor de verdad si ambas son ciertas.
----- B) OR         .- es el "o" logico. Evalua dos condiciones y devuelve un valor de verdad si uno de ellos es cierto.
----- C) NOT        .- es Negación Lógica. devuelve lo contrario de la expresión.
-- ========================================== OPERADORES LOGICOS FIN ===========================================

-- =========================================== OPERADORES NUMERICOS: ===========================================
--- A) + ==> SUMA
--- B) - ==> RESTA
--- C) * ==> MULTIPLICAIÓN
--- D) / ==> DIVICIÓN
--- E) ** Ó ^ ==> EXPONENCIACIÓN
-- ========================================= OPERADORES NUMERICOS FIN: ==========================================

-- ========================================= OPERADORES DE CARACTERES: ==========================================
--- A) || .- PERMITE CONCATENAR CARACTERES
-- ======================================= OPERADORES DE CARACTERES FIN: =========================================

-- ========================================= OPERADORES DE COMPARACIÓN: ==========================================
--- A) <            .- MENOR QUE
--- B) >            .- MAYOR QUE
--- C) >            .- DISTINTO DE
--- D) <=           .- MENOR O IGUAL QUE
--- E) >=           .- MAYOR O IGUAL QUE
--- F) =            .- IGUAL QUE
--- G) BETWEEN      .- UTILIZAR PARA ESPECIFICAR UN INTERVALO DE VALORES
--- H) LIKE(~~)     - UTILIZADO EN LA COMPRACIÓN DE UN MODELO
--- I) IN           .- ESPECIFICADO PARA ESPECIFICAR UN REGISTRO DE UNA BASE DE DATOS
--- J) ILIKE(!~~)   .- UTILIZADO EN LA COMPRACION DE UN MODELO CON LA DIFERENCIA QUE NO TOMA EN CUENTA LA MAYUSCULA O MINISCULA
--- k) similar to   .-
-- ======================================= OPERADORES DE COMPARACIÓN FIN: =========================================

-- ================================================ SINTAXIS SQL: =================================================
-- CAMPO [NOT] BETWEEN VALOR1 AND VALOR2  --> LA CONDICIÓN NOT NO ES OBLIGATORIA
-- CAMPO [NOT] IN (VALOR1, VALOR2,...)    --> LA CONDICIÓN NOT NO ES OBLIGATORIA
-- (EXPRESIÓN Ó CAMPO) [NOT] LIKE MODELO                --> LA CONDICIÓN NOT NO ES OBLIGATORIA
-- (EXPRESIÓN Ó CAMPO) [NOT] ILIKE MODELO               --> LA CONDICIÓN NOT NO ES OBLIGATORIA

-- ============================================== SINTAXIS SQL FIN: ================================================

-- LIKE .- SE UTILIZA PARA COMPARAR UNA EXPRESIÓN DE CADENA CON UN MODELO EN UNA EXPRESIÓN SQL.

-- ===================================================== COMODIN ===================================================
-- %    .- CUALQUIER CADENA DE CERO A MÁS CARACTERES.
-- -    .- CUALQUIER CARACTER INDIVIDUAL.
-- ==================================================== COMODIN FIN =================================================

---------------------------------------------- ****EJEMPLOS PRACTICOS****---------------------------------------
-- 1) MOSTRAR LOS CAMPOS ID_LIBRO, ISBN, TITULO, SUBTITULO DE LA TABLA ADM_LIBRO CUYO ISBN SEA IGUAL A '0-7645-2641-3';
select * from dbo.adm_libro where isbn = '0-7645-2641-3';

-- 2) RETORNAR LOS REGISTROS DE LA TABLA ADM_LIBRO CUYO AÑO DE PUBLICACION SEAN MAYORES O IGUALES AL AÑO '2010';
select * from dbo.adm_libro where anio_publicacion >= '2010';

-- 3) RETORNAR LOS REGISTROS DE LA TABLA ADM_LIBRO CUYO AÑO DE PUBLICACION SEA IGUAL A 2015 Y EL ESTADO SEA IGUAL A 1;
select * from dbo.adm_libro where anio_publicacion = '2015' and estado = '1';

-- 4) RETORNAR LOS REGISTROS DE LA TABLA ADM_LIBRO Y ORDENARLOS DE FORMA ASCENDENTE MEDIANTE EL CAMPO TITULO;
select * from dbo.adm_libro order by titulo asc;

-- 5) RETORNAR LOS REGISTROS DE LA TABLA ADM_LIBRO CUYO AÑO DE PUBLICACIÓN SEA IGUAL A 2010 Y ORDENARLOS DE FORMA ASCENDENTE MEDIANTE EL CAMPO TITULO Y SUB_TITULO;
select * from dbo.adm_libro where anio_publicacion = '2010' order by 3,4 asc;

-- 7) RETORNAR LAS FILAS DE LA TABLA ADM_LIBRO QUE NO ESTEN COMPRENDIDO ENTRE LOS AÑOS DE PUBLICACION 2010 Y 2015
select * from dbo.adm_libro where anio_publicacion not between '2010' and '2015';

-- 8) RETORNAR LAS FILAS DE LA TABLA ADM_LIBRO QUE PERTENECEN A LA EDITORIAL 4 0 5
select * from dbo.adm_editorial;
select * from dbo.adm_libro where id_editorial in(4,5);

-- 9) RETORNAR LAS FILAS DE LA TABLA ADM_LIBRO CUYOS REGISTROS NO PERTENESCAN A LA EDITORIAL 3
select * from dbo.adm_libro where not id_editorial in(3)

-- 10) RETORNAR LAS FILAS DE LA TABLA ADM_LIBRO CUYOS TITULOS EMPIEZEN CON LA LETRA 'C' SEGUIDO CUALQUIER CARACTER.
select * from dbo.adm_libro where titulo like 'c%';

-- 11) RETORNAR LAS FILAS DE LA TABLA ADM_LIBRO EN CUYO TITULO SE ENCUENTRE LA PALABRA 'DATOS'.
select * from dbo.adm_libro where titulo ilike '%datos%';