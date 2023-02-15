---------------------------------------------------------------------------------------------------------------
--- INSTRUCCIÓN SELECT MULTI-TABLAS
---------------------------------------------------------------------------------------------------------------
-- :: Las consultas multi tablas nos permiten recuperar datos procedentes de dos o mas tablas.

-- =========================================== COMBINACIONES EN SQL ============================================
----- A)INNER JOIN      .- ES UNA COMBINACIÓN INTERNA. EL CAMPO COMÚN DEBE EXISTIR EN AMBAS TABLAS.
-- ========================================= COMBINACIONES EN SQL FIN =========================================== 

---------------------------------------------- ****EJEMPLOS PRACTICOS****---------------------------------------
-- 1) OBTENER EL NOMBRE DE LAS EDITORIALES Y LOS LIBROS ORDENADOS POR EL NOMBRE DE LA EDITORIAL.
select 
ed.nombre as editorial,
li.titulo 
from dbo.adm_libro li
inner join dbo.adm_editorial ed
on li.id_editorial = ed.id_editorial 
order by 1 asc;

select 
ed.nombre as editorial,
li.titulo  
from dbo.adm_libro li, dbo.adm_editorial ed
where li.id_editorial = ed.id_editorial 
order by 1 asc;

-- 2) OBTENER EL NOMBRE DE LAS AREAS, SUB AREAS DE LOS LIBROS ORDENADOS POR EL TITULO DEL LIBRO.
select 
ar.descripcion as area,
sa.descripcion as sub_area, 
li.titulo 
from dbo.adm_area ar
inner join dbo.adm_sub_area sa
on ar.id_area = sa.id_area
inner join dbo.adm_libro li
on sa.id_sub_area = li.id_sub_area
order by 3 asc;

-- 3) OBTENER LOS LIBROS CON SUS RESPECTIVOS AUTORES ORDENADOS POR EL TITULO DEL LIBRO.
select 
au.nombre || ' ' || au.apellidos as autor, 
li.titulo 
from dbo.adm_libro li
inner join dbo.adm_libro_autor la
on li.id_libro = la.id_libro
inner join dbo.adm_autor au
on au.id_autor = la.id_autor
order by 2 asc;


---------------------------------------------------------------------------------------------------------------
--- SQL PELICULA - COMENTARIO : EJEMPLO RIGTH JOIN
---------------------------------------------------------------------------------------------------------------

create table dbo.pelicula(
   id_pelicula serial primary key,
   titulo varchar(255) not null
);

create table dbo.pelicula_comentario(
   id_pelicula_comentario serial primary key,
   id_pelicula integer,
   comentario varchar(255) not null	
);

INSERT INTO dbo.pelicula(titulo) VALUES('Joker');
INSERT INTO dbo.pelicula(titulo) VALUES('Avengers: Endgame');
INSERT INTO dbo.pelicula(titulo) VALUES('Parasite');

INSERT INTO dbo.pelicula_comentario(id_pelicula, comentario) VALUES(1, 'Excelente');
INSERT INTO dbo.pelicula_comentario(id_pelicula, comentario) VALUES(2, 'Impresionante');
INSERT INTO dbo.pelicula_comentario(id_pelicula, comentario) VALUES(null, 'Fasinante');
INSERT INTO dbo.pelicula_comentario(id_pelicula, comentario) VALUES(null, 'Hermosa');

----------------------------------------- ****EJEMPLOS COMBINACION EXTERNA****----------------------------------
