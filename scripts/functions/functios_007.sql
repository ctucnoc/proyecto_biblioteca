---------------------------------------------------------------------------------------------------------------
--- CURSOR EXPLICITO
---------------------------------------------------------------------------------------------------------------
create or replace function dbo.fn_listar_autor()
returns setof dbo.adm_autor
as
$$
declare
 v_cur_autor cursor for select * from dbo.adm_autor;
 v_autor dbo.adm_autor%rowtype;
begin
 for v_autor in v_cur_autor loop
  return next v_autor;
 end loop;
 return;
end;
$$
language 'plpgsql';

select * from dbo.fn_listar_autor();