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