# java-full-stack-dev-u15
Este repositorio corresponde a ejercicios realizados en la formación de Java Full Stack Developer, concretamente a la unidad 15 UD15 - DML (I)

Ejercicio 1

``` sql
USE  directores;
INSERT INTO despachos (numero, capacidad) VALUES 
(1,20), 
(2,5), 
(3,15), 
(4,35), 
(5,25), 
(6,5), 
(7,25), 
(8,20), 
(9,15), 
(10,10), 
(11,20);

INSERT INTO directores (DNI, nombre_completo, DNI_jefe, despacho) VALUES 
('12345684', 'Jose A', DEFAULT, 1),
('12345685', 'Daniel', '12345684', 2),
('12345686', 'Joan', '12345684', 3),
('12345687', 'Miguel', '12345684', 10),
('12345688', 'Gerard', '12345684', 4),
('12345689', 'Marc', '12345688', 8),
('12345610', 'Veronika', '12345686', 5),
('12345611', 'Constant', '12345686', 9),
('12345612', 'Octavi', '12345686', 6),
('12345613', 'Aida', '12345686', 6),
('12345696', 'Adria', '12345688', 4);

SELECT * FROM directores;
SELECT * FROM despachos;
```

Ejercicio 2

``` sql
USE piezas_y_proveedores;
INSERT INTO piezas (codigo, nombre) VALUES 
(1, 'Batería'),
(2, 'Bombillas'),
(3, 'Discos de frenos'),
(4, 'Parabrisas'),
(5, 'Indicador de presión de neumáticos'),
(6, 'Faros delanteros'),
(7, 'Bujías'),
(8, 'Mando de llave a distancia'),
(9, 'Tiradores de puertas y seguros de cierre'),
(10,'Fusibles');

INSERT INTO proveedores (id, nombre) VALUES 
('000A', 'Tiendas Aurgi'),
('000B', 'Autoexpress'),
('000C', 'Totcar'),
('000D', 'Oscaro'),
('000E', 'Recambios-expres'),
('000F', 'Norauto'),
('000G', 'Rexbo'),
('000H', 'Piezascochesonline'),
('000I', 'Dosochoauto'),
('001J', 'Recambioclasico');

INSERT INTO suministra (codigo_pieza, id_proveedor, precio) VALUES 
(1, '000A', 75),
(2, '000B', 15),
(3, '000C', 300),
(4, '000D', 20),
(5, '000E', 60),
(6, '000F', 45),
(7, '000G', 15),
(8, '000H', 55),
(9, '000I', 100),
(10,'001J', 35);

SELECT * FROM piezas;
SELECT * FROM proveedores;
SELECT * FROM suministra;
```

Ejercicio 3

``` sql
USE cientificos;
INSERT INTO cientificos (DNI, nombre_completo) VALUES 
('12345684', 'Jose González Ruiz'),
('12345685', 'Daniel Fernandez Lujan'),
('12345686', 'Joan Hurtado Martín'),
('12345687', 'Miguel Alcántara Garrido'),
('12345688', 'Gerard Martinez Soja'),
('12345689', 'Marc Marquez Sevilla'),
('12345610', 'Veronika Rexbo Tomico'),
('12345611', 'Constant Tomico Rexbo'),
('12345612', 'Octavi Herraiz Llull'),
('12345613', 'Aida Queralt Lozano'),

INSERT INTO proyectos (id, nombre, horas) VALUES 
('0001' , 'EL BILLETE QUE ARDE… ¡Y NO SE QUEMA!', 10),
('0002' , 'CAMINAR SOBRE HUEVOS… ¡SIN ROMPERLOS!', 50),
('0003' , 'VIENDO BAILAR A LAS ONDAS DE SONIDO', 60),
('0004' , 'HAZ GEODAS CON HUEVOS', 30),
('0005' , 'CONVERTIR UNA PASTILLA DE JABÓN DE MARFIL EN UNA PALOMITA MONSTRUOSA', 80),
('0006' , '¡LAS PLANTAS CAMBIAN DE COLOR!', 50),
('0007' , 'HACIENDO ENGORDAR A LOS OSITOS DE GOMA (Y OTRAS COSAS PEORES…)', 15),
('0008' , 'ROCK CANDY CASERO… ¡Y CON UN PALO!', 20),
('0009' , 'UNA PLANTA QUE CRECE EN UN CD', 12),
('0010' , 'AGUJEREAR LA BOLSA SIN QUE SE SALGA EL AGUA', 45);

INSERT INTO asignado_a (cientifico, proyecto, precio) VALUES
('12345684','0010',20),
('12345685','0001',100),
('12345686','0002',24),
('12345687','0003',30),
('12345688','0004',100),
('12345689','0005',20),
('12345610','0006',24),
('12345611','0007',22),
('12345612','0008',68),
('12345613','0009',50);

SELECT * FROM cientificos;
SELECT * FROM proyectos; 
SELECT * FROM asignado_a;
```

Ejercicio 4

``` sql
USE grandes_almacenes;
INSERT INTO cajeros (codigo, nombre_completo) VALUES 
(12345684, 'Jose González Ruiz'),
(12345685, 'Daniel Fernandez Lujan'),
(12345686, 'Joan Hurtado Martín'),
(12345687, 'Miguel Alcántara Garrido'),
(12345688, 'Gerard Martinez Soja'),
(12345689, 'Marc Marquez Sevilla'),
(12345610, 'Veronika Rexbo Tomico'),
(12345611, 'Constant Tomico Rexbo'),
(12345612, 'Octavi Herraiz Llull'),
(12345613, 'Aida Queralt Lozano'),
(12345696, 'Adria Ruiz Esteban');

INSERT INTO productos (codigo, nombre, precio) VALUES 
(1,"Paneles solares y cargadores",54),
(2,"Llaveros inteligentes",45),
(3,"Altavoces portátiles",23),
(4,"Termómetros para bebés",98),
(5,"Asientos de automóvil",57),
(6,"Cortaúñas para bebés",22),
(7,"Camas para mascotas",30),
(8,"Cuencos de alimentación personalizados",54),
(9,"Collares de entrenamiento",34),
(10,"Mochilas",34);

INSERT INTO maquinas_registradoras (codigo, piso) VALUES 
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10);

INSERT INTO venta (cajero, maquina, producto) VALUES 
(12345684, 1, 7),
(12345688, 3, 5),
(12345684, 2, 4),
(12345688, 5, 4),
(12345684, 7, 4),
(12345688, 9, 4),
(12345684, 10, 4),
(12345684, 8, 3),
(12345696, 7, 2),
(12345688, 1, 1);

SELECT * FROM cajeros;
SELECT * FROM productos; 
SELECT * FROM maquinas_registradoras;
SELECT * FROM venta;
```

Ejercicio 5

``` sql
USE investigadores;
INSERT INTO facultades (codigo, nombre) VALUES 
(1,"UAB"),
(2,"URV"),
(3,"Hardvard"),
(4,"Candbridge"),
(5,"Universitat de Valencia"),
(6,"MIT"),
(7,"Cannes"),
(8,"UMAA"),
(9,"UTL Salke"),
(10,"Universida Granada");

INSERT INTO investigadores (DNI, nombre_completo, facultad) VALUES 
("12345684", "Jose González Ruiz", 1),
("12345685", "Daniel Fernandez Lujan", 2),
("12345686", "Joan Hurtado Martín", 3),
("12345687", "Miguel Alcántara Garrido", 4),
("12345688", "Gerard Martinez Soja", 5),
("12345689", "Marc Marquez Sevilla", 6),
("12345610", "Veronika Rexbo Tomico", 7),
("12345611", "Constant Tomico Rexbo", 8),
("12345612", "Octavi Herraiz Llull", 9),
("12345613", "Aida Queralt Lozano", 10);

INSERT INTO equipos (numero_serie, nombre, facultad) VALUES 
("fase", "Equipo10", 10),
("dfsd", "Equipo3", 8),
("uER3", "Equipo4", 7),
("Sdfa", "Equipo5", 9),
("sdfe", "Equipo6", 3),
("dfas", "Equipo5", 7),
("JKds", "Equipo6", 3),
("djdf", "Equipo1", 2),
("dssd", "Equipo5", 1),
("dass", "Equipo1", 1);

INSERT INTO reserva (DNI, numero_serie, comienzo, fin) VALUES 
("12345684", "fase",'2010-05-10','2010-06-10'),
('12345686', "dfsd", '2010-05-23', '2010-06-12'),
("12345685", "uER3", "2010-05-23", "2010-06-12"),
("12345687", "uER3", "2010-05-23", "2010-06-12"),
("12345688", "sdfe", "2010-05-23", "2010-06-12"),
("12345689", "dssd", "2010-05-23", "2010-06-12"),
("12345610", "JKds", "2010-03-23", "2010-06-12"),
("12345611", "JKds", "2010-05-23", "2010-06-12"),
("12345612", "Sdfa", "2010-03-23", "2010-06-12"),
("12345613", "dass", "2010-05-23", "2010-04-12");

SELECT * FROM facultades;
SELECT * FROM investigadores;
SELECT * FROM equipos;
SELECT * FROM reserva;
```
Ejercicio 2 Unidad 12

``` sql
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
```

Ejercicio 8 Unidad 12

``` sql
INSERT INTO EJ8.AEROPUERTO (CodigoAeropuerto,NombreAeropuerto,Pais,Localidad)
VALUES
	('Central6', 'AeropuertoReus', 'España', 'Tarragona'),
	('Central2', 'AeropuertoBarcelona', 'España', 'Barcelona'),
	('Central3', 'AeropuertoKampala', 'Uganda', 'Kampala'),
	('Central4', 'AeropuertoVendrell', 'España', 'Vendrell'),
	('Central5', 'AeropuertoLleida', 'España', 'Lleida');
    
INSERT INTO EJ8.AVIO (Codigoavion,NumPlazas)
VALUES
	('AV1','A1'),
	('AV2','A2'),
	('AV3','A3'),
	('AV4','A4'),
	('AV5','A5');
    
INSERT INTO EJ8.CLIENTES (DNI,NombreCliente,DireccionClientes,TelefonoClientes,TarjetaClientes)
VALUES
	('48523183N','Daniel','casa paco','telefono1','targeta1'),
	('78564138N','Joan','casa angel','telefono2','targeta1'),
	('12531535N','Marc','casa wvxx','telefono3','targeta1'),
	('34472145N','Jose','casa fernando','telefono4','targeta1'),
	('78564138N','Aida','casa pedre','telefono5','targeta1');
    
INSERT INTO EJ8.EMBARQUE (NumeroReserva,FechaEmbarque,CodigoCliente)
VALUES
	('R1','20/11/2022','48523183N'),
	('R2','10/07/2022','34472145N'),
	('R3','15/08/2022','12531535N'),
	('R4','07/06/2022','78564138N'),
	('R5','21/11/2022','78564138N');
INSERT INTO EJ8.Fer (CodigoVuelo,CodigoAeropuerto)
VALUES
	('VO1','Central3'),
	('VO1','Central4'),
	('VO1','Central6'),
	('VO1','Central1'),
	('VO1','Central2');
    
INSERT INTO EJ8.VOLS (CodigoVuelo,FechaSalida,FechaLlegada,AeropuertoOrigen,AeropuertoDestino,CodigoAvio)
VALUES
	('VO1','20/11/2022','20/11/2022','España','Uganda','AV5'),
	('VO2','10/07/2022','05/11/2022','España','Uganda','AV5'),
	('VO3','15/08/2022','13/11/2022','España','Uganda','AV5'),
	('VO4','07/06/2022','15/11/2022,','España','España','AV3'),
	('VO5','21/11/2022','23/11/2022','España','España','AV3');
INSERT INTO EJ8.Reserva (DNI,CodigoVuelo)
VALUES
	('48523183N','AV1'),
	('78564138N','AV3'),
	('12531535N','AV4'),
	('78564138N','AV5'),
	('34472145N','AV2');
INSERT INTO EJ8.LLOC (NumeroAsiento,FilaAvion,ColumnaAvion,PlantaAvion,CodigoAvion,NumeroReserva)
VALUES
	('AJ1','A1','A','B1','AV3','R1'),
	('AJ2','A2','A','B1','AV3','R2'),
	('AJ3','A3','B','B1','AV3','R3'),
	('AJ4','A4','B,','B1','AV3','R4'),
	('AG1','A5','C','B1','AV3','R5');
```

Ejercicio 14 Unidad 12

``` sql
INSERT INTO Usuarios (Contraseña,Nombre,Apellidos,foto) VALUES ("Contraseña","Rudy","Fernandez","D",1);
INSERT INTO Usuarios (Contraseña,Nombre,Apellidos,foto) VALUES ("Contraseña","Cristiano","Ronaldo","D",1);

INSERT INTO Celebridad(verificado,idUsuarios) VALUES(true,1);
INSERT INTO Comun(direccion,email,idComun)values("C/Badalona","hola@gmail.com",2);

INSERT INTO Comentarios(texto,imagen,idUsuario) values("Texto de Ejemplo",null,1);
INSERT INTO Comentarios(texto,imagen,idUsuario) values("Texto de Ejemplo",null,2);

Insert into Grupos(id,nombre) value(1,"Grupo de amigos");

Insert into EsContacto(idUsuario,bloqueado) value(1,false);

Insert into Tienen(idUsuario,idGrupos) value(1,1);
Insert into Tienen(idUsuario,idGrupos) value(2,1);
```
