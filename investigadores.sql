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