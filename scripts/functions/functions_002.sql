create or replace function dbo.fn_registar_editorial(
in in_nombre varchar
)
returns setof int
as
$$
begin
 return query
  insert into dbo.adm_editorial(nombre,estado) values(in_nombre,default)
  returning id_editorial;
end;
$$
language 'plpgsql';

create or replace function dbo.fn_actualizar_editorial(
in in_id_editorial integer,
in in_nombre varchar
)
returns setof int
as
$$
begin
 return query
 update dbo.adm_editorial set nombre = in_nombre where id_editorial = in_id_editorial
 returning id_editorial;
end;
$$
language 'plpgsql'

create or replace function dbo.fn_eliminar_editorial(
in in_id_editorial int
)
returns setof int
as
$$
begin
 return query
  update dbo.adm_editorial set estado = '0' where id_editorial = in_id_editorial
  returning id_editorial;
end;
$$
language 'plpgsql';