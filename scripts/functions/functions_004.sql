create or replace function dbo.fn_busqueda_avanzada_editorial(
in in_descripcion varchar
)
returns table(
 o_id_editorial int,
 o_nombre varchar,
 o_estado varchar
)
as
$$
begin
 return query(
  select id_editorial,nombre,estado from dbo.adm_editorial where nombre ilike '%'|| in_descripcion || '%' 
 );
end;
$$
language 'plpgsql';

select * from dbo.fn_busqueda_avanzada_editorial('ra-ma');