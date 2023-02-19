---------------------------------------------------------------------------------------------------------------
--- FUNCIONES DEFINIDAS POR EL USUARIO
---------------------------------------------------------------------------------------------------------------
-- :: LaSON BLOQUES DE CODIGO ES DECIR ESTRUCTURAS QUE AGLUTINAN UNA SERIE DE INSTRUCCIONES CON EL FIN DE EVITAR VOLVER A REPETIR EL CODIGO

-- =========================================== TIPOS DE LENGUAJE EN POSGRESQL ============================================
----- 1) SQL
----- 2) PLPGSQL
----- 3) PLPYTHON
----- 4) PLR
-- ======================================== TIPOS DE LENGUAJE EN POSGRESQL FIN ============================================ 
--- SINTAXIS DE UNA FUNCION
CREATE [OR REPLACE] FUNCTION esquema.nombre_funcion (argumentos)
RETURNS valor
AS 
$$
DECLARE
 variable;
BEGIN
$$
LANGUAGE 'tipo_lenguaje_utilizado'

---------------------------------------------- ****EJEMPLOS PRACTICOS****---------------------------------------

