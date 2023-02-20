---------------------------------------------------------------------------------------------------------------
--- FUNCIONES DEFINIDAS POR EL USUARIO
---------------------------------------------------------------------------------------------------------------
-- :: SON BLOQUES DE CODIGO ES DECIR ESTRUCTURAS QUE AGLUTINAN UNA SERIE DE INSTRUCCIONES CON EL FIN DE EVITAR VOLVER A REPETIR EL CODIGO

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
END;
$$
LANGUAGE 'tipo_lenguaje_utilizado'

---------------------------------------------- ****EJEMPLOS PRACTICOS****---------------------------------------
create or replace function dbo.fn_saludo()
returns varchar
as
$$
begin
 return 'hola Mundo';
end;
$$
language 'plpgsql';

create or replace function dbo.fn_sumar(
in nro_a integer,
in nro_b integer
)
returns integer
as
$$
declare
 v_suma integer := 0;
begin
 v_suma:= nro_a + nro_b;
 return v_suma;
end;
$$
language 'plpgsql';

create or replace function dbo.suma_n(
in nro_n integer
)
returns integer
as
$$
declare
 v_suma integer:= 0;
begin
 v_suma:= nro_n*(nro_n + 1)/2;
 return v_suma;
end;
$$
language 'plpgsql';

create or replace function dbo.suma_while(
in nro integer
)
returns integer
as
$$
declare
 v_suma integer:= 0;
 v_cont integer:= 1;
begin
 while v_cont <= nro loop
  v_suma:= v_suma + v_cont;
  v_cont:= v_cont +1;
 end loop;
 return v_suma;
end;
$$
language 'plpgsql';

create or replace function dbo.fn_factorial(
in nro int
)
returns bigint
as
$$
declare
 v_factorial bigint := 1;
begin
 while nro <> 0 loop
  v_factorial:= v_factorial*nro;
  nro:= nro - 1;
 end loop;
 return v_factorial;
end;
$$
language 'plpgsql';