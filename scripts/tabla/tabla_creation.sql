create table dbo.adm_autor(
id_autor serial not null,
nombre varchar(60) not null,
apellidos varchar(100) not null,
estado varchar(1) default '1'
);

create table dbo.adm_editorial(
id_editorial serial not null,
nombre varchar(100) not null,
estado varchar(1) default '1'
);

create table dbo.adm_area(
id_area serial not null,
descripcion varchar(100) not null,
estado varchar(1) default '1'
);

create table dbo.adm_biblioteca(
id_biblioteca serial not null,
nombre varchar(100) not null,
descripcion varchar(500),
direccion varchar(150),
estado varchar(1) default '1'
);

create table dbo.adm_ejemplar_estado(
id_ejemplar_estado serial not null,
descripcion varchar(40) not null,
estado varchar(1) default '1'
);

create table dbo.adm_sub_area(
id_sub_area serial not null,
descripcion varchar(100) not null,
id_area integer not null,
estado varchar(1) default '1'
);

create table dbo.adm_libro(
id_libro serial not null,
idbn varchar(30),
titulo varchar(200) not null,
sub_titulo varchar(500),
descripcion varchar(1000),
nro_paginas varchar(10),
anio_publicacion varchar(4),
id_editorial integer not null,
id_sub_area integer not null,
estado varchar(1) default '1'
);

create table dbo.adm_libro_autor(
id_libro_autor serial not null,
id_libro integer not null,
id_autor integer not null,
estado varchar(1) default '1'
);

create table dbo.adm_zona(
id_zona serial not null,
descripcion varchar(100),
id_biblioteca integer not null,
estado varchar(1) default '1'
);

create table dbo.adm_ejemplar(
id_ejemplar serial not null,
codigo varchar(40) not null,
cantidad integer not null,
fecha_registro date,
id_libro integer not null,
id_ejemplar_estado integer not null,
id_zona integer not null,
estado varchar(1) default '1'
);

alter table dbo.adm_autor
add constraint pk_id_autor
primary key(id_autor);

alter table dbo.adm_editorial
add constraint pk_id_editorial
primary key(id_editorial);

alter table dbo.adm_area
add constraint pk_id_area
primary key(id_area);

alter table dbo.adm_sub_area
add constraint pk_id_sub_area
primary key(id_sub_area);

alter table dbo.adm_libro
add constraint pk_id_libro
primary key(id_libro);

alter table dbo.adm_libro_autor
add constraint pk_id_libro_autor
primary key(id_libro_autor);

alter table dbo.adm_ejemplar
add constraint pk_id_ejemplar
primary key(id_ejemplar);

alter table dbo.adm_ejemplar_estado
add constraint pk_id_ejemplar_estado
primary key(id_ejemplar_estado);

alter table dbo.adm_biblioteca
add constraint pk_id_biblioteca
primary key(id_biblioteca);

alter table dbo.adm_zona
add constraint pk_id_zona
primary key(id_zona);


alter table dbo.adm_sub_area
add constraint fk_id_area
foreign key (id_area)
references dbo.adm_area (id_area);


alter table dbo.adm_zona
add constraint fk_id_biblioteca
foreign key (id_biblioteca)
references dbo.adm_biblioteca (id_biblioteca);

alter table dbo.adm_ejemplar
add constraint fk_id_zona
foreign key (id_zona)
references dbo.adm_zona (id_zona);

alter table dbo.adm_ejemplar
add constraint fk_id_ejemplar_estado
foreign key (id_ejemplar_estado)
references dbo.adm_ejemplar_estado (id_ejemplar_estado);

alter table dbo.adm_libro
add constraint fk_id_editorial
foreign key (id_editorial)
references dbo.adm_editorial (id_editorial);

alter table dbo.adm_libro
add constraint fk_id_sub_area
foreign key (id_sub_area)
references dbo.adm_sub_area (id_sub_area);

alter table dbo.adm_libro_autor
add constraint fk_id_libro_la
foreign key (id_libro)
references dbo.adm_libro (id_libro);

alter table dbo.adm_libro_autor
add constraint fk_id_autor
foreign key (id_autor)
references dbo.adm_autor (id_autor);