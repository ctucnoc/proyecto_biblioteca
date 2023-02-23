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
select * from dbo.fn_registrar_autor('mario','vargas');
select * from dbo.adm_autor;

create or replace function dbo.fn_eliminar_autor(
in in_id int
)
returns setof dbo.adm_autor
as
$$
begin
 update dbo.adm_autor set estado = '0' where id_autor = in_id;
 return query
  select * from dbo.adm_autor where id_autor = in_id;
end;
$$
language 'plpgsql';

select * from dbo.fn_eliminar_autor(10);


create or replace function dbo.fn_actualizar_autor(
in in_id int,
in in_nombre varchar,
in in_apellidos varchar
)
returns setof dbo.adm_autor
as
$$
begin
 update dbo.adm_autor set nombre = in_nombre, apellidos = in_apellidos
 where id_autor = in_id;
 return query
  select * from dbo.adm_autor where id_autor = in_id;
end;
$$
language 'plpgsql';

select * from dbo.fn_actualizar_autor(10,'mario','vargas llosa');

