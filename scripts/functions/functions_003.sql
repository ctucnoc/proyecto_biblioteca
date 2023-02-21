create or replace function dbo.fn_buscar_editorial_id(
in in_id_editorial int
)
returns setof dbo.adm_editorial
as
$$
begin
 return query
  select * from dbo.adm_editorial where id_editorial = in_id_editorial;
end;
$$
language 'plpgsql';