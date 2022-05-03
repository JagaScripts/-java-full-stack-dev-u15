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