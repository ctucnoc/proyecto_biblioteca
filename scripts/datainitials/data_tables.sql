--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: AREA
--------------------------------------------------------------------------------------------------------------------------------

INSERT INTO dbo.adm_area(descripcion, estado) VALUES ('informatica', '1');
INSERT INTO dbo.adm_area(descripcion, estado) VALUES ('literatura', '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: SUB AREA
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('desarrollo de software', 1, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('bases de datos', 1, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('seguridad informatica', 1, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('auditoria informatica', 1, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('red y comunicaciones', 1, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('comedia', 2, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('drama', 2, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('cuento', 2, '1');
INSERT INTO dbo.adm_sub_area(descripcion, id_area, estado) VALUES ('novela', 2, '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: BIBLIOTECA
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_biblioteca(nombre, descripcion, direccion, estado)
VALUES ('biblioteca central de la unsch', 'biblioteca central de la unsch', 'campus de la unsch', '1');
INSERT INTO dbo.adm_biblioteca(nombre, descripcion, direccion, estado)
VALUES ('biblioteca especializado de la FIMGC', 'biblioteca especializado de la fimgc', 'campus de la unsch', '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: EDITORIAL
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_editorial(nombre, estado) VALUES ('Editorial Mirahadas', '1');
INSERT INTO dbo.adm_editorial(nombre, estado) VALUES ('Editorial Sexto Piso', '1');
INSERT INTO dbo.adm_editorial(nombre, estado) VALUES ('Editorial Alfaomega', '1');
INSERT INTO dbo.adm_editorial(nombre, estado) VALUES ('Editorial Ra-Ma', '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: ZONA
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_zona(descripcion, id_biblioteca, estado) VALUES ('sala principal', 2, '1');
INSERT INTO dbo.adm_zona(descripcion, id_biblioteca, estado) VALUES ('circulacion primer piso', 1, '1');
INSERT INTO dbo.adm_zona(descripcion, id_biblioteca, estado) VALUES ('circulacion segundo piso', 1, '1');
INSERT INTO dbo.adm_zona(descripcion, id_biblioteca, estado) VALUES ('sotano', 1, '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: EJEMPLAR ESTADO


--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_ejemplar_estado(descripcion, estado) VALUES ('disponible', '1');
INSERT INTO dbo.adm_ejemplar_estado(descripcion, estado) VALUES ('prestamo', '1');
INSERT INTO dbo.adm_ejemplar_estado(descripcion, estado) VALUES ('mantenimiento', '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: AUTOR
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Octavio Irineo', 'Paz Lozano', '1');
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Gabriel José de la Concordia', 'García Márquez', '1');
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('César Abraham', 'Vallejo Mendoza', '1');
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Mario Gerardo', 'Piattini Velthuis', '1');
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Mercedes', 'Marqués', '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: AUTOR
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_libro(idbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('0-7645-2641-3', 'diseño de bases de datos relacional', 'diseño de bases de datos relacional', 'bases de datos', '342', '2015', 4, 2, '1');
INSERT INTO dbo.adm_libro(idbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-6', 'auditoria de tecnologia y sistemas de informacion', 'auditoria informatica', 'auditoria de tecnologia', '438', '2015', 4, 4, '1');
INSERT INTO dbo.adm_libro(idbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-7', 'paco yunque', 'paco yunque', 'paco yunque', '10', '2010', 4, 8, '1');
INSERT INTO dbo.adm_libro(idbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-5', 'el tungsteno', 'el tungsteno', 'el tungsteno', '230', '1931', 4, 9, '1');
INSERT INTO dbo.adm_libro(idbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-3', 'cien años de soledad', 'cien años de soledad', 'cien años de soledad', '280', '1981', 3, 9, '1');
INSERT INTO dbo.adm_libro(idbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('978-84-693-0146-3', 'bases de datos', 'bases de datos', 'bases de datos', '342', '1981', 3, 2, '1');