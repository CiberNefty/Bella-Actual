SELECT * FROM db_bella_actual.categoria;

insert into db_bella_actual.categoria values (1, 'CABELLO', 'Producto para el cuidado y aseo del cabello');
insert into db_bella_actual.categoria values (2, 'ROSTRO', 'Producto para el cuidado del rostro');
insert into db_bella_actual.categoria values (3, 'MANOS', 'Producto para el cuidado de las manos');
insert into db_bella_actual.categoria values (4, 'CUERPO', 'productos para el cuidado del cuerpo');
insert into db_bella_actual.categoria values (5, 'PIES', 'Producto para el cuidado y aseo de los pies');
insert into db_bella_actual.categoria values (6, 'MICELANEOS', 'Poductos extras');

-- SUBCATEGORIAS

-- categoria de CABELLO
select * from db_bella_actual.subcategoria;
INSERT INTO subcategoria values (1, 'Shampoos', 'Cuidado del cabello', 1);
insert into subcategoria values (2, 'Acondicionadores', 'Cuidado del cabello', 1 );
insert into subcategoria values (3, 'mascarillas', 'Cuidado del cabello ', 1);
insert into subcategoria values (4, 'Serums y aceites', 'Cuiado del cabello', 1);
insert into subcategoria values (5, 'Espumas y geles', 'Cuidado del cabello', 1);
insert into subcategoria values (6, 'Productos para el peinado', 'Cuidado del cabello', 1 );
insert into subcategoria values (7, 'Tintes y decolorantes', 'Cuidado del cabello', 1);
insert into subcategoria values (8, 'Cuidado del cuero cabelludo', 'Cuidado del cabello', 1);
insert into subcategoria values (9, 'Productos naturales', 'Cuidado del cabello', 1); 
insert into subcategoria values (10, 'peine', 'Cuidado del cabello', 1); 
insert into subcategoria values (11, 'Cabello para niños', 'Cuidado del cabello', 1);
insert into subcategoria values (12, 'Cabello para hombres', 'Cuidado del cabello', 1);
insert into subcategoria values (13, 'Cabello para cabello afro', 'Cuidado del cabello', 1);

-- CATEGORIA DE ROSTRO
insert into subcategoria values (14, 'Limpiadores', 'Para eliminar impurezas y maquillaje', 2);
insert into subcategoria values (15, 'Tonicos', 'equilibrar el pH y preparar la piel ', 2);
insert into subcategoria values (16,'Humectantes', 'Para hidratar la piel en profundidad', 2);
insert into subcategoria values (17,'Serums', ' Concentrados de ingredientes activos ', 2);
insert into subcategoria values (18,'Cremas hidratantes', 'Para proteger y nutrir la piel', 2);
insert into subcategoria values (19,'Protectores solares', ' Para proteger la piel de los rayos UV', 2);
insert into subcategoria values (20,'Mascarillas', 'Tratamientos intensivos para diferentes necesidades', 2);
insert into subcategoria values (21,'Exfoliantes', 'elimina células muertas y renovar la piel', 2);
insert into subcategoria values (22,'Contorno de ojos', 'Piel del contorno de los ojos', 2);
insert into subcategoria values (23,'Base de maquillaje', 'Para unificar el tono de la piel', 2);
insert into subcategoria values (24,'Correctores', 'Para disimular imperfecciones', 2);
insert into subcategoria values (25,'Polvos', 'Para fijar el maquillaje y matificar la piel', 2);
insert into subcategoria values (26,'Rubores', 'Para dar color a las mejillas', 2);
insert into subcategoria values (27,'Sombras de ojos', ' Para maquillar los párpados', 2);
insert into subcategoria values (28,'Delineadores de ojos', 'Para definir los ojos', 2);
insert into subcategoria values (29, 'Máscaras de pestañas', 'Para dar volumen y longitud a las pestañas', 2);
insert into subcategoria values (30, 'Labiales', 'Para dar color a los labios', 2);


 -- SUBCATEGORIA CUERPO
insert into subcategoria values (31, 'Jabones', 'para diferentes tipos de piel ',4 );
insert into subcategoria values (32, 'Geles de ducha', 'con diferentes aromas y propiedades',4);
insert into subcategoria values (33, 'Desodorantes', 'En roll-on, spray, barra',4);
insert into subcategoria values (34, 'Espumas de baño', 'Para relajar y cuidar la piel',4);
insert into subcategoria values (35, 'Loción corporal', 'Para todo tipo de piel',4);
insert into subcategoria values (36, 'Cremas corporales', 'texturas más densas para pieles muy secas',4);
insert into subcategoria values (37, 'Butters corporales', 'Hidratación intensa para pieles secas',4);
insert into subcategoria values (38, 'Aceites corporales', 'Para una hidratación profunda',4);
insert into subcategoria values (39, 'Cuchillas', 'Desechables y reutilizables',4);
insert into subcategoria values (40,'Cera', 'En frío, en caliente, bandas depilatorias',4);
insert into subcategoria values (41,'Crema depilatoria', 'Para eliminar el vello sin dolor.',4);


-- SUBCATEGORIA  MANOS

INSERT INTO Subcategoria VALUES
(42, 'Cremas para manos', 'Cremas especialmente para manos suaves e hidratadas.', 3),
(43, 'Esmaltes', 'Variedad de colores y acabados para embellecer y dar estilo a tus uñas.', 3),
(44, 'Tratamientos de manos', 'Productos para tratamientos para las manos.', 3),
(45, 'Limas y pulidores', 'Herramientas para dar forma y pulir las uñas de las manos.', 3),
(46, 'Aceites para manos', 'Aceites nutritivos para rejuvenecer la piel de las manos.', 3);


-- Subcategorías para pies
INSERT INTO Subcategoria VALUES
(47, 'Cremas para pies', 'Cremas hidratantes y reparadoras para  los pies.', 5),
(48, 'Exfoliantes para pies', 'Productos para eliminar las células muertas.', 5),
(49, 'Tratamientos de pies', 'Tratamientos especiales para problemas comunes en los pies, como callos o durezas.', 5),
(50, 'Calcetines de tratamiento', 'Calcetines impregnados con ingredientes activos para un cuidado intensivo de los pies.', 5),
(51, 'Sprays y desodorantes para pies', 'Productos que ayudan a mantener los pies frescos y sin olor durante todo el día.', 5);

-- SUBCATEGORIA MICELANEOS
INSERT INTO Subcategoria VALUES
(52, 'Herramientas de belleza', 'Accesorios diversos para facilitar la aplicación y el cuidado en la belleza personal.', 6),
(53, 'Sets de regalo', 'Combinaciones de productos de belleza en paquetes especiales para regalar.', 6),
(54, 'Organizadores de cosméticos', 'Soluciones para almacenar y organizar tus productos de belleza de manera eficiente.', 6),
(55, 'Cuidado de la piel complementario', 'Productos adicionales que complementan las rutinas de cuidado de la piel.', 6),
(56, 'Accesorios para el cabello', 'Productos y herramientas para el cuidado y estilizado del cabello.', 6);


-- TABLA USUARIOS
select * from   db_bella_actual.usuario;

INSERT INTO usuario (Id_Usuario, Nombre_Usu, Contraseña_Usu, Email_Usu, Telefono_Usu, Fecha_Inicio_Contrato_Usu, Cedula_Usu, Id_Rol) VALUES
(1, "Nubia Arias Quevedo", 				"1234", 	"nubia.arias@gmail.com", 	31685947, 	"1999-11-25",	'1045765', 	1),
(2, "Laura Valentina Medina Arias",	 	"5678", 	"laura@hotmail.com", 		5641636,	 "2010-10-02",	'10456778', 2), 
(3, "Juanita Catalina Medina Arias",	"12345", 		"juanitaca@gmail.com", 		5689135,	 "2018-02-03",	'104509777', 2),
(4, "Daniel argemiro Botero", 			"123456", 		"daniel@hotmail.es", 		85691325	, "2024-01-01",	'17480897', 1);
INSERT INTO usuario (Id_Usuario, Nombre_Usu, Contraseña_Usu, Email_Usu, Telefono_Usu, Fecha_Inicio_Contrato_Usu, Cedula_Usu, Id_Rol) VALUES (5, "Sergio Alexander Gomez", 			"Esra348", 		"serge@hotmail.es", 		85696788	, "2024-04-06",	'17480897', 1);

-- TABLA PROVEEDOR

select * from db_bella_actual.Proveedor;
INSERT INTO proveedor (Id_Proveedor, Nombre_Prov, Telefono_Prov, Direccion_Prov) VALUES
(1,'Luis García', '+57 300 123 4567', 'calle 100 # 34 -67'),
(2,'Ana Martínez', '+57 300 234 5678', 'carrera 80 # 89 32' ),
(3,'Carlos Pérez', '+57 300 345 6789', ' transversal 56 # 78-90'),
(4,'Sofía López', '+57 300 456 7890', 'avenida 4 # 56-56' ),
(5,'María Rodríguez', '+57 300 567 8901','calle 52 #56-90'),
(6,'Romina Barciaz', '+57 300 326 7890', 'avenida 65 # 45-56' ),
(7,'María Aldeaño', '+57 300 543 8901','calle 62 #68-80');



-- TABLA DE PRODUCTO

select * from db_bella_actual.producto;

INSERT INTO Producto (Id_Producto, Nombre_Prod, Medida_Prod, Unidad_Medida_Prod, Precio_Bruto_Prod, Iva_Prod, Porcentaje_Ganancia, Unidades_Totales_Prod, Marca_Prod, Estado_Prod, Id_Proveedor, Id_Subcategoria) VALUES
(1,	 'Shampoo Revitalizante',			100, 'Mililitros', 	20000, 0.19, 0.15, 100, 'Garnier',   		'Activo',	 		1, 	1),
(2,	 'Crema Facial Hidratante',			150, 'Mililitros', 	15000, 0.19, 0.20, 200, 'Nivea',	 		'En stock', 		2, 	18),
(3,	 'Gel de Baño Exfoliante', 			300, 'Mililitros', 	12000, 0.16, 0.18, 150, 'Dove', 	 		'Desabastecido',	3, 	32),
(4,	 'Crema para Manos Nutritiva', 		420, 'Mililitros', 	10000, 0.10, 0.25, 120, 'L’Occitane',		'Activo', 			4, 	42),
(5,	 'Esmalte de Uñas Brillante', 		470, 'Mililitros', 	8000,  0.08, 0.30, 250, 'Maybelline',		'En stock', 		5, 	43),
(6,	 'Bálsamo Labial Hidratante', 		520, 'Gramos', 		6000,  0.1,  0.35, 300, 'Carmex',    		'Activo', 			6, 	30),
(7,	 'Acondicionador Reparador', 		100,  'Mililitros', 22000, 0.19, 0.12, 80,  'Pantene',   		'Desabastecido',	1, 	2),
(8,	 'Limpiador Facial Antimanchas', 	140, 'Mililitros', 	18000, 0.19, 0.22, 90,  'La Roche-Posay',   'En stock', 		2, 	14),
(9,	 'Crema Corporal Hidratante', 		300, 'Mililitros', 	25000, 0.16, 0.17, 110, 'Eucerin',   		'Activo', 			3, 	36 ),
(10, 'Crema para Pies Reparadora', 		470, 'Mililitros', 	12000, 0.12, 0.20, 130, 'Neutrogena', 		'Desabastecido', 	4, 	47),
(11, 'Gel de Baño Relax', 				300, 'Mililitros', 	14000, 0.15, 0.18, 140, 'Vichy', 			'En stock', 		5, 	32),
(12, 'Serum Antiedad', 					140, 'Mililitros', 	35000, 0.19, 0.25, 60,  'Estée Lauder', 	'Activo', 			6, 	17),
(13, 'Exfoliante Corporal Natural', 	300, 'Mililitros', 	16000, 0.18, 0.20, 70,  'The Body Shop', 	'Desabastecido', 	7, 	37),
(14, 'Crema para Ojos Revitalizante',	140, 'Mililitros', 	22000, 0.19, 0.30, 50,  'Clinique', 		'En stock', 		1, 	18),
(15, 'Jabón de Manos Antibacterial', 	420, 'Mililitros', 	10000, 0.12, 0.15, 80,  'Dettol', 			'Activo', 			2, 	46),
(16, 'Crema Facial Calmante', 			140, 'Mililitros', 	18000, 0.19, 0.22, 75,  'Avene', 			'Desabastecido', 	3, 	18),
(17, 'Body Mist Floral', 				300, 'Mililitros',  12000, 0.10, 0.28, 100, 'Victoria’s Secret', 'En stock', 		4, 	35),
(18, 'Mascarilla Capilar Reparadora', 	100,  'Mililitros', 22000, 0.18, 0.20, 60,  'Redken',			 'Activo', 			5, 	3),
(19, 'Crema Anti Estrías', 				300, 'Mililitros',  18000, 0.16, 0.25, 70,  'Mustela', 			 'Desabastecido', 	6, 	36),
(20, 'Desodorante Spray', 				300, 'Mililitros',  9000,  0.12, 0.15, 80,  'Rexona', 			 'En stock', 		7, 	33),
(21, 'Crema de Noche Regeneradora', 	140, 'Mililitros',  25000, 0.19, 0.28, 55,  'L’Oréal', 			 'Activo', 			1, 	36),
(22, 'Pasta Dental Blanqueadora', 		520, 'Mililitros',  7000,  0.10, 0.12, 150, 'Sensodyne', 		 'Desabastecido', 	2, 	52),
(23, 'Serum Hidratante Intensivo', 		140, 'Mililitros',  28000, 0.19, 0.30, 50,  'Neutrogena', 		 'En stock', 		3, 	17),
(24, 'Crema Hidratante para Hombre', 	300, 'Mililitros',  15000, 0.14, 0.20, 90,  'Nivea', 		     'Activo', 			4,	18),
(25, 'Jabón Corporal Nutritivo', 		300, 'Gramos', 		9000,  0.12, 0.15, 100, 'Dove', 			 'Desabastecido', 	5, 	31),
(26, 'Crema para Cutículas', 			420, 'Mililitros',  8000,  0.10, 0.18, 90,  'Sally Hansen', 	 'En stock', 		6, 	42),
(27, 'Esmalte de Uñas en Gel', 			470, 'Mililitros',  9000,  0.12, 0.22, 100, 'O.P.I', 		     'Activo', 			7, 	43),
(28, 'Cera Depilatoria en Frío', 		520, 'Gramos', 		12000, 0.10, 0.18, 75,  'Veet', 			 'Desabastecido', 	1, 	41),
(29, 'Aceite de Argan', 				140, 'Mililitros',  27000, 0.18, 0.25, 60,  'Moroccanoil', 		 'En stock', 		2, 	4),
(30, 'Desmaquillante Facial', 			140, 'Mililitros',  16000, 0.19, 0.20, 70,  'Bioderma', 		 'Activo', 			3, 	3),
(31, 'Crema Corporal Anticelulítica', 	300, 'Mililitros',  20000, 0.16, 0.22, 90,  'Elancyl', 			 'Desabastecido', 	4, 	36),
(32, 'Loción Hidratante para Pies', 	470, 'Mililitros',  11000, 0.14, 0.18, 80,  'Scholl', 			 'En stock', 		5, 	51),
(33, 'Crema de Manos Hidratante', 		420, 'Mililitros',  9000,  0.10, 0.15, 100, 'Nivea', 			 'Activo', 			6, 	42),
(34, 'Gel Facial Astringente', 			140, 'Mililitros',  14000, 0.18, 0.22, 90,  'Vichy', 			 'Desabastecido', 	7, 	15),
(35, 'Tónico Facial Revitalizante', 	140, 'Mililitros',  17000, 0.19, 0.25, 70,  'La Roche-Posay', 	 'En stock', 		1,	15),
(36, 'Crema para el Contorno de Ojos', 	140, 'Mililitros',  22000, 0.19, 0.30, 60,  'Clinique', 		 'Activo', 			2, 	22),
(37, 'Esmalte de Uñas Mate', 			470, 'Mililitros',  10000, 0.10, 0.25, 130, 'Revlon', 			 'Desabastecido', 	3, 	43),
(38,'Jabón Facial Purificante', 		140, 'Gramos', 		14000, 0.15, 0.18, 80,  'Neutrogena', 	     'En stock', 		4, 	14),
(39,'Gel para Afeitar', 				300, 'Mililitros',  10000, 0.12, 0.20, 90,  'Gillette', 		 'Activo', 			5, 	5),
(40,'Crema de Manos Hidratante', 		42,  'Mililitros',  9000,  0.10,  0.15, 100, 'Nivea', 			 'Desabastecido', 	6, 	42);

-- TABLA FECHA REGISTRO PRODUCTO
select * from db_bella_actual.fecha_registro_prod;

insert into fecha_registro_prod values (1, 	'2024-11-25', 50, 1, 39);
insert into fecha_registro_prod values (2, 	'2024-05-25', 40, 5, 20);
insert into fecha_registro_prod values (3, 	'2024-07-25', 70, 1, 19);
insert into fecha_registro_prod values (4, 	'2024-10-25', 98, 1, 1);
insert into fecha_registro_prod values (5, 	'2024-11-25', 65, 1, 4);
insert into fecha_registro_prod values (6, 	'2024-02-25', 12, 1, 9);
insert into fecha_registro_prod values (7, 	'2024-05-25', 60, 1, 9);
insert into fecha_registro_prod values (8, 	'2024-08-25', 56, 1, 3);
insert into fecha_registro_prod values (9, 	'2024-09-25', 70, 1, 36);
insert into fecha_registro_prod values (10, '2024-10-25', 30, 1, 39);


select * from db_bella_actual.venta;

INSERT INTO Venta (Fecha_Venta, Total_Venta, Id_Usuario, Forma_Pago_Fact) VALUES
('2024-09-01 10:00:00', 75000, 1, 'Nequi'),
('2024-09-01 11:30:00', 56000, 2, 'Targeta debito'),
('2024-09-02 09:00:00', 120000, 3, 'Daviplata'),
('2024-09-02 10:30:00', 34000, 4, 'PSE'),
('2024-09-03 14:00:00', 88000, 1, 'Nequi'),
('2024-09-03 15:00:00', 65000, 2, 'Targeta de credito'),
('2024-09-04 10:00:00', 145000, 3, 'Daviplata'),
('2024-09-04 11:30:00', 70000, 4, 'Nequi'),
('2024-09-05 12:00:00', 30000, 1, 'Targeta de credito'),
('2024-09-05 13:30:00', 95000, 2, 'Targeta devito' ),
('2024-09-06 09:00:00', 72000, 3, 'Nequi'),
('2024-09-06 10:30:00', 45000, 4, 'Addi'),
('2024-09-07 11:00:00', 110000, 1, 'Daviplata'),
('2024-09-07 12:30:00', 33000, 2, 'PSE'),
('2024-09-08 14:00:00', 90000, 3, 'Nequi'),
('2024-09-08 15:30:00', 50000, 4, 'Efectivo'),
('2024-09-09 10:00:00', 130000, 1, 'Efectivo'),
('2024-09-09 11:30:00', 67000, 2, 'Transferencia bancaria'),
('2024-09-10 12:00:00', 45000, 3, 'Nequi'),
('2024-09-10 13:30:00', 100000, 4, 'Daviplata');


select * from db_bella_actual.factura;
INSERT INTO Factura (Impuestos_Fact, Fecha_Generacion_Fact) VALUES
(0.19, '2024-09-02 09:30:00'),
(0.19, '2024-09-02 11:15:00'),
(0.19, '2024-09-03 14:30:00'),
(0.19, '2024-09-03 16:00:00'),
(0.19, '2024-09-04 10:30:00'),
(0.19, '2024-09-04 12:00:00'),
(0.19, '2024-09-05 12:30:00'),
(0.19, '2024-09-05 14:15:00'),
(0.19, '2024-09-06 09:30:00'),
(0.19, '2024-09-06 11:00:00'),
(0.19, '2024-09-07 11:30:00'),
(0.19, '2024-09-07 12:15:00'),
(0.19, '2024-09-08 14:30:00'),
(0.19, '2024-09-08 15:00:00'),
(19.00, '2024-09-09 10:30:00'),
(19.00, '2024-09-09 11:30:00'),
(19.00, '2024-09-10 12:00:00'),
(19.00, '2024-09-10 13:30:00');
