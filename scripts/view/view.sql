---------------------------------------------------------------------------------------------------------------
--- VIEW
---------------------------------------------------------------------------------------------------------------
-- :: ES UNA TABLA VIRTUAL POR QUE ALMACENA UNA CONSULTA
-- :: LOS DATOS ACCESIBLE POR LA VISTA NO ESTAN ALMACENADOS EN LA BASE DE DATOS COMO UN OBJETO
-- :: LAS VISTAS ALMACENAN UNA CONSULTA COMO UN OBJETO PARA UTILIZARCE POSTERIORMENTE
-- :: ES UNA TABLA VIRTUAL POR QUE LOS RESULTADOS QUE RETORNA Y LA MANERA DE UTILIZARLOS ES LO MISMO QUE UNA TABLA.

-- ================================================ SINTAXIS SQL: =================================================
CREATE [OR REPLACE] VIEW 'esquema'.'nombre_vista' AS
STATAMENTS
-- ============================================== SINTAXIS SQL FIN: ================================================

---------------------------------------------- ****EJEMPLOS PRACTICOS****---------------------------------------
-- 1).- CREAR UNA VISTA EL CUAL DEBE ESTAR FORMADO POR UNA CONSULTA QUE MUESTRE EL ID_LIBRO, ISBN, EL TITULO Y EL ESTADO DE LOS LIBROS
create or replace view dbo.v_libro as
select li.id_libro,li.isbn,li.titulo,li.estado from dbo.adm_libro li;

-- 2).- CREAR UNA VISTA EL CUAL DEBE CONTENER UNA CONSULTA QUE MUESTRE LA CANTIDAD DE LIBROS POR EDITORIAL
create or replace view dbo.v_libro_editorial as
select ed.nombre as editorial,count(li.titulo) as cantidad_libros from dbo.adm_libro li, dbo.adm_editorial ed
where li.id_editorial = ed.id_editorial
group by 1;

select * from dbo.v_libro_editorial where cantidad_libros > 2;