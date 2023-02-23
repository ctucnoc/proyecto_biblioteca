---------------------------------------------------------------------------------------------------------------
--- FUNCIÓN PARA REALIZAR LA BUSQUEDA AVANZADA MEDIANTE UNA PALABRA CLAVE
---------------------------------------------------------------------------------------------------------------
create or replace function dbo.fn_busqueda_avanzada_autor(
in in_palabra_clave varchar
)
returns table(
id_autor int,
nombre varchar,
apellidos varchar,
estado varchar
)
as
$$
begin
 return query(
  select au.* from dbo.adm_autor au
  where concat(au.nombre,' ',au.apellidos) ilike concat('%',in_palabra_clave,'%')
 );
end;
$$
language 'plpgsql';

select * from dbo.fn_busqueda_avanzada_autor('piat');