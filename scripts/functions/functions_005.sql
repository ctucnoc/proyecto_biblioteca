create or replace function dbo.fn_eliminar_autor(
 in in_id_autor dbo.adm_autor.id_autor%type
)
returns setof dbo.adm_autor
as
$$
begin
 update dbo.adm_autor set estado = '0' where id_autor = in_id_autor;
 return query
  select * from dbo.adm_autor where id_autor = in_id_autor;
end;
$$
language 'plpgsql';

select * from dbo.fn_eliminar_autor(9);


create or replace function dbo.fn_actualizar_autor(
in in_id_autor int,
in in_nombre varchar,
in in_apellidos varchar
)
returns setof dbo.adm_autor
as
$$
begin
 update dbo.adm_autor set nombre = in_nombre, apellidos = in_apellidos
 where id_autor = in_id_autor;
 return query
  select * from dbo.adm_autor where id_autor = in_id_autor;
end;
$$
language 'plpgsql';

select * from dbo.fn_actualizar_autor(9,'Cristian','Tucno');
select * from dbo.adm_autor;



create or replace function dbo.fn_registrar_autor(
 in in_nombre dbo.adm_autor.nombre%type,
 in in_apellidos dbo.adm_autor.apellidos%type
)
returns setof void
as
$$
begin
 insert into dbo.adm_autor(nombre,apellidos,estado)
 values(in_nombre,in_apellidos,default);
end;
$$
language 'plpgsql';

select * from dbo.fn_registrar_autor('Bruce','Sterling');