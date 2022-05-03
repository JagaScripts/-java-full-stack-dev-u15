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