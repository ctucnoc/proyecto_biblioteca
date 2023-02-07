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
INSERT INTO dbo.adm_editorial(nombre, estado) VALUES ('MC GRAW HILL', '1');

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
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Cesar', ' Seoane Ruano', '1');
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Roxana', 'Silvia Giandini', '1');
INSERT INTO dbo.adm_autor(nombre, apellidos, estado) VALUES ('Gabriela', 'Pérez', '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: AUTOR
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('0-7645-2641-3', 'diseño de bases de datos relacional', 'diseño de bases de datos relacional', 'bases de datos', '342', '2015', 4, 2, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-6', 'auditoria de tecnologia y sistemas de informacion', 'auditoria informatica', 'auditoria de tecnologia', '438', '2015', 4, 4, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-7', 'paco yunque', 'paco yunque', 'paco yunque', '10', '2010', 4, 8, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-5', 'el tungsteno', 'el tungsteno', 'el tungsteno', '230', '1931', 4, 9, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('976-84-7897-3', 'cien años de soledad', 'cien años de soledad', 'cien años de soledad', '280', '1981', 3, 9, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('978-84-693-0146-3', 'bases de datos', 'bases de datos', 'bases de datos', '342', '1981', 3, 2, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('978-84-481-7137-7', 'SEGURIDAD INFORMATICA.GRADO MEDIO', 'Seguridad informatica', 'Seguridad informatica', '240', '2010', 5, 3, '1');
INSERT INTO dbo.adm_libro(isbn, titulo, sub_titulo, descripcion, nro_paginas, anio_publicacion, id_editorial, id_sub_area, estado)
VALUES ('978-84-481-7137-8', 'Desarrollo de software dirigido por modelos: Conceptos teóricos y su aplicación práctica', 'desarollo de software', 'desarollo de software', '170', '2010', 5, 1, '1');


--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: LIBRO AUTOR
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (1, 4, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (2, 4, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (3, 3, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (4, 3, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (5, 2, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (6, 5, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (7, 6, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (7, 4, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (8, 7, '1');
INSERT INTO dbo.adm_libro_autor(id_libro, id_autor, estado) VALUES (8, 8, '1');

--------------------------------------------------------------------------------------------------------------------------------
---DATOS DE LA TABLA: EJEMPLAR
--------------------------------------------------------------------------------------------------------------------------------
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00342', 5, '2023-02-03', 1, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00343', 2, '2023-02-03', 1, 1,2 , '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00344', 3, '2023-02-03', 1, 1, 3, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00345', 4, '2023-02-03', 2, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00346', 5, '2023-02-03', 2, 1, 3, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00347', 2, '2023-02-03', 2, 1, 4, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00348', 1, '2023-02-03', 3, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00349', 2, '2023-02-03', 3, 1, 2, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00350', 1, '2023-02-03', 3, 1, 3, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('LIT-00351', 3, '2023-02-03', 4, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('LIT-00352', 5, '2023-02-03', 4, 1, 2, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('LIT-00353', 4, '2023-02-03', 4, 1, 4, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('LIT-00354', 6, '2023-02-03', 5, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('LIT-00355', 5, '2023-02-03', 5, 1, 2, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('LIT-00356', 7, '2023-02-03', 5, 1, 3, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00354', 6, '2023-02-03', 6, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00355', 3, '2023-02-03', 6, 1, 2, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00356', 4, '2023-02-03', 6, 1, 4, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00357', 3, '2023-02-03', 7, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00358', 3, '2023-02-03', 7, 1, 4, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00359', 7, '2023-02-03', 7, 1, 3, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00360', 3, '2023-02-03', 8, 1, 1, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00361', 3, '2023-02-03', 8, 1, 4, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00362', 5, '2023-02-03', 8, 1, 3, '1');
INSERT INTO dbo.adm_ejemplar(codigo, cantidad, fecha_registro, id_libro, id_ejemplar_estado, id_zona, estado)
VALUES ('INF-00363', 4, '2023-02-03', 8, 1, 2, '1');