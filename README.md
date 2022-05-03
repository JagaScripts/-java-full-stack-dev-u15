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
("12345684", "fase",'2010/05/10','2010/06/10'),
('12345686', "dfsd", '2010/05/23', '2010/06/12'),
("12345685", "uER3", "2010/05/23", "2010/06/12"),
("12345687", "uER3", "2010/05/23", "2010/06/12"),
("12345688", "sdfe", "2010/05/23", "2010/06/12"),
("12345689", "dssd", "2010/05/23", "2010/06/12"),
("12345610", "JKds", "2010/03/23", "2010/06/12"),
("12345611", "JKds", "2010/05/23", "2010/06/12"),
("12345612", "Sdfa", "2010/03/23", "2010/06/12"),
("12345613", "dass", "2010/05/23", "2010/04/12");

SELECT * FROM facultades;
SELECT * FROM investigadores; 
SELECT * FROM equipos;
SELECT * FROM reserva;
```
