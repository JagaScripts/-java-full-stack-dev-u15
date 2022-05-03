USE  academia_de_clases;
INSERT INTO empresa (cif, nombre, telefono, direccion) VALUES
('12345678V','T-Systems',346932514,'Reus Calle la piedra 23'),
('12345679V','Dapsa',346932515,'Amposta Calle loro SN'),
('12345671V','Colsa',346932516,'Paterna Poligono Ind. fuente el Jarro'),
('12345672V','Diusframi',346932517,'Madrid Avendia Industria'),
('12345673V','Lamigraf',346932518,"Carrer Mas Dorca, 14, 08480 LAmetlla del Vallès, Barcelona");

INSERT INTO alumno (dni, nombre, telefono, direccion, edad, cif) VALUES 
('12345684V','Jose A',346932514,"LAmpolla",39,'12345678V'),
('12345685V','Jose',346932515,'Paterna Poligono Ind. fuente el Jarro',28,'12345679V'),
('12345686V','Daniel',346932516,'Tarragona',25,'12345671V'),
('12345687V','Joan',346932517,'Reus Calle la piedra 23',23,'12345672V'),
('12345688V','Miguel',346932518,"Carrer Mas Dorca, 14, 08480 L\'Ametlla del Vallès, Barcelona",26,'12345673V');

INSERT INTO profesor (dni, nombre, apellidos, telefono, direccion) VALUES 
('13345684V','Jose A','González',346932514,"L\'Ampolla Ramon Llull"),
('14345685V','Jose','Martinez',346932515,'Paterna Poligono Ind. fuente el Jarro'),
('15345686V','Daniel','Fernandez',346932516,'Tarragona Carrer Mas Dorca, 24, 08480'),
('16345687V','Joan','Hurtado',346932517,'Reus Carrer Mas Dorca, 14'),
('17345688V','Miguel','Alcántara',346932518,"Calle la piedra 08480 L\'Ametlla del Vallès, Barcelona");

INSERT INTO programa (id_programa, codigo, titulo, fecha_inicio, fecha_fin, cursos_duracion) VALUES 
(NULL,'JR09458', 'Grado Ingeniería Informatica', '1997-06-21', CURRENT_DATE(),DEFAULT),
(NULL,'JR09459', 'Grado Ingeniería Telecomunicaciones', '1998-06-21', CURRENT_DATE(),DEFAULT),
(NULL,'JR09410', 'Grado Ingeniería Mecanica', '1999-06-21', CURRENT_DATE(),DEFAULT),
(NULL,'JR09411', 'Grado Ingeniería Industrial', '2000-06-21', CURRENT_DATE(),DEFAULT),
(NULL,'JR09412', 'Grado Matemáticas', '2001-06-21', CURRENT_DATE(),DEFAULT);

INSERT INTO curso (id_curso, id_programa, dni, codigo, titulo, fecha_inicio, fecha_fin, meses_duracion) VALUES 
(NULL, 1, '13345684V', 'JR09458', 'Fundamentos Informatica', '1997-06-21', CURRENT_DATE(),DEFAULT),
(NULL, 2, '14345685V', 'JR09459', 'Fundamentos Telecomunicaciones', '1998-06-21', CURRENT_DATE(),DEFAULT),
(NULL, 3, '15345686V', 'JR09410', 'Fundamentos Mecanica', '1999-06-21', CURRENT_DATE(),DEFAULT),
(NULL, 4, '16345687V', 'JR09411', 'Fundamentos Industrial', '2000-06-21', CURRENT_DATE(),DEFAULT),
(NULL, 5, '17345688V', 'JR09412', 'Fundamentos Matemáticas', '2001-06-21', CURRENT_DATE(),DEFAULT);

INSERT INTO cursar (dni, id_curso, nota) VALUES 
('12345684V', 1, 10),
('12345685V', 2, 9),
('12345686V', 3, 8),
('12345687V', 4, 7),
('12345688V', 5, 5);



SELECT * FROM alumno;
SELECT * FROM profesor;
SELECT * FROM programa;
SELECT * FROM curso;
SELECT * FROM empresa;
SELECT * FROM cursar;