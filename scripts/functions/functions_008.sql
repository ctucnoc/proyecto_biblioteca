create or replace function dbo.fn_listar_libro_autor()
returns setof dbo.adm_libro_autor
as
$$
declare
 v_libro_autor dbo.adm_libro_autor%rowtype;
begin
 for v_libro_autor in select * from dbo.adm_libro_autor loop
  return next v_libro_autor;
 end loop;
end;
$$
language 'plpgsql';

select * from dbo.fn_listar_libro_autor();