-- ===================================================== UPDATE ===================================================
-- UPDATE           .- Esta sentencia nos permite modificar valores de una tabla
-- SINTAXIS         .- UPDATE 'NOMBRE_TABLA' SET 'NOMBRE_COLUMNA' = 'NUEVO VALOR' WHERE conditions;
-- =================================================== UPDATE FIN =================================================

-- ===================================================== EJEMPLO: =================================================
--1) MODIFICAR EL SUB TITULO DEL LIBRO CUYO ISBN SEA IGUAL A '978-84-693-0146-3' POR 'bases de datos caso teorico y practico';
update dbo.adm_libro set sub_titulo = 'bases de datos caso teorico y practico' where isbn = '978-84-693-0146-3';
