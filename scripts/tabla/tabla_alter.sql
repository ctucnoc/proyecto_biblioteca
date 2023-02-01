----------------------------
-- tabla producto
----------------------------
create table dbo.product(
id serial primary key,
denominacion varchar(20) not null,
cant integer not null,
precio double precision not null
);

----------------------------
-- insertar datos a la tabla
----------------------------
insert into dbo.product(denominacion,cant,precio)
values('agua mineral angel',10,1.5);

----------------------------
-- modificar nombre tabla
----------------------------
alter table 'nombre_tabla_antigua' rename to 'nombre_tabla_actual'
alter table dbo.product rename to producto;

----------------------------
-- adicionar columna
----------------------------
alter table 'nombre_tabla' add column 'nombre_nuevo_campo' typeData;
alter table dbo.producto
add column estado varchar(1) default '1';

----------------------------
-- aumentar tamaño columna
----------------------------
alter table 'nombre_tabla' alter column 'nombre_campo' typeData;
alter table dbo.producto
alter column denominacion type varchar(60);

----------------------------
-- modificar tipo de dato
----------------------------
alter table dbo.producto
alter column denominacion set data type text;

----------------------------
-- cambiar nombre columna
----------------------------
alter table dbo.producto
rename column cant to cantidad;

----------------------------
-- eliminar columna
----------------------------
alter table dbo.producto
drop column estado;

----------------------------
-- eliminar tabla
----------------------------
drop table dbo.producto;