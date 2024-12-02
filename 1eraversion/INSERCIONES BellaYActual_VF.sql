# INSERCIONES TABLAS DE BELLA Y ACTUAL
USE Bella_y_actual_V3;
# TABLA EMPRESAS_PROVEEDORAS
INSERT INTO EMPRESAS_PROVEEDORAS (Id_Empresas_proveedoras, Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES (1, 'Yellow', "Daniel Gomez", 0000001,'Direccion 1');
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ('CAT', "Andrea Hurtado", 0000002,'Direccion 2');
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ('Sony Studios', "Andrea Garzon", 0000003,'Direccion 3');
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ("ASUS","Sergio Pinzon", 0000004,'Direccion 4'); # AQUI EL CAMPO Nombre es NULL.
INSERT INTO EMPRESAS_PROVEEDORAS (nombre,Encargado_Despacho, Direccion_Empresa) VALUES ('SENA',"Ivan Bedoya",'');# AQUI EL CAMPO Telefono_Empresa y de paso en Direccion_Empresa guarda vacios tambien es NULL.
INSERT INTO EMPRESAS_PROVEEDORAS VALUES (6,'Envidia', "Katherines Arias", 0000006,'Direccion 6'); # Aqui quitamos todos los campos como guia a donde guardaresmos a pesar de que haya una columna en auto-incrementable toca colocar todos los campos necesarios para que haya una relacion de macheo.
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ('KUUL', "Esperanza Gomez", 0000007,'Direccion 7');
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ('VASS', "Natalí Garcia", 0000008,'Direccion 8');
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ('ALPHA PARFH', "Paola Jara", 0000009,'Direccion 9');
INSERT INTO EMPRESAS_PROVEEDORAS (Nombre, Encargado_Despacho, Telefono_Empresa, Direccion_Empresa) VALUES ('NIVEA', "Felipe Vera", 0000010,'Direccion 10');

# TABLA PROVEEDOR
INSERT INTO `bella_y_actual_V3`.`proveedor`(`Id_Proveedor`,`Cedula`,`Nombre_Prove`,`Apellido_Prov`,`Telefono_Prov`,`Id_Empresas_proveedoras`)VALUES(1,001,'Esteban',"Perez",101,1);
INSERT INTO `bella_y_actual_V3`.`proveedor`(`Id_Proveedor`,`Cedula`,`Nombre_Prove`,`Apellido_Prov`,`Telefono_Prov`,`Id_Empresas_proveedoras`)VALUES(2,002,'Jose',"Jimeza",101,1);

INSERT INTO proveedor (Id_Proveedor, Cedula, Nombre_Prove, Apellido_Prov, Telefono_Prov, Id_Empresas_proveedoras) VALUES
(3, '123456789', 'Luis', 'García', '+57 300 123 4567', 1),
(4, '987654321', 'Ana', 'Martínez', '+57 300 234 5678', 2),
(5, '456789123', 'Carlos', 'Pérez', '+57 300 345 6789', 1),
(6, '321654987', 'Sofía', 'López', '+57 300 456 7890', 3),
(7, '789123456', 'María', 'Rodríguez', '+57 300 567 8901', 2);

-- CATEGORIAS
select * from categoria; 
insert into categoria values (1, 'Cabello', 'Productos para el cabello');
insert into categoria values (2, 'Rostro', 'Productos para el Rostro');
insert into categoria values (3, 'Manos', 'Productos para el Manos');
insert into categoria values (4, 'Cuerpo', 'Productos para el Cuerpo');
insert into categoria values (5, 'Miscelaneos', 'Productos varios');
insert into categoria values (6, 'Pies', 'Productos para el pies');

## TABLA SUBCATEGORIA
-- categoria de CABELLO
INSERT INTO subcategoria values (1,1, 'Shampoos', 'Cuidado del cabello');
insert into subcategoria values (2,1, 'Acondicionadores', 'Cuidado del cabello');
insert into subcategoria values (3,1, 'mascarillas', 'Cuidado del cabello ');
insert into subcategoria values (4,1, 'Serums y aceites', 'Cuiado del cabello');
insert into subcategoria values (5,1, 'Espumas y geles', 'Cuidado del cabello');
insert into subcategoria values (6,1, 'Productos para el peinado', 'Cuidado del cabello' );
insert into subcategoria values (7,1, 'Tintes y decolorantes', 'Cuidado del cabello');
insert into subcategoria values (8,1, 'Cuidado del cuero cabelludo', 'Cuidado del cabello');
insert into subcategoria values (9,1, 'Productos naturales', 'Cuidado del cabello'); 
insert into subcategoria values (10,1, 'peine', 'Cuidado del cabello'); 
insert into subcategoria values (11,1, 'Cabello para niños', 'Cuidado del cabello');
insert into subcategoria values (12,1, 'Cabello para hombres', 'Cuidado del cabello');
insert into subcategoria values (13,1, 'Cabello para cabello afro', 'Cuidado del cabello');

-- CATEGORIA DE ROSTRO
insert into subcategoria values (14, 2,'Limpiadores', 'Para eliminar impurezas y maquillaje');
insert into subcategoria values (15,2, 'Tonicos', 'equilibrar el pH y preparar la piel ');
insert into subcategoria values (16, 2,'Humectantes', 'Para hidratar la piel en profundidad');
insert into subcategoria values (17, 2,'Serums', ' Concentrados de ingredientes activos ');
insert into subcategoria values (18, 2,'Cremas hidratantes', 'Para proteger y nutrir la piel');
insert into subcategoria values (19, 2,'Protectores solares', ' Para proteger la piel de los rayos UV');
insert into subcategoria values (20, 2,'Mascarillas', 'Tratamientos intensivos para diferentes necesidades');
insert into subcategoria values (21, 2,'Exfoliantes', 'elimina células muertas y renovar la piel');
insert into subcategoria values (22, 2,'Contorno de ojos', 'Piel del contorno de los ojos');
insert into subcategoria values (23, 2,'Base de maquillaje', 'Para unificar el tono de la piel');
insert into subcategoria values (24, 2,'Correctores', 'Para disimular imperfecciones');
insert into subcategoria values (25, 2,'Polvos', 'Para fijar el maquillaje y matificar la piel');
insert into subcategoria values (26, 2,'Rubores', 'Para dar color a las mejillas');
insert into subcategoria values (27, 2,'Sombras de ojos', ' Para maquillar los párpados');
insert into subcategoria values (28, 2,'Delineadores de ojos', 'Para definir los ojos');
insert into subcategoria values (29,2, 'Máscaras de pestañas', 'Para dar volumen y longitud a las pestañas');
insert into subcategoria values (30, 2,'Labiales', 'Para dar color a los labios');

-- CATEGORIA DE CUERPO

insert into subcategoria values (31,4, 'Jabones', 'para diferentes tipos de piel ');
insert into subcategoria values (32,4, 'Geles de ducha', 'con diferentes aromas y propiedades');
insert into subcategoria values (33,4, 'Desodorantes', 'En roll-on, spray, barra');
insert into subcategoria values (34,4, 'Espumas de baño', 'Para relajar y cuidar la piel');
insert into subcategoria values (35,4, 'Loción corporal', 'Para todo tipo de piel');
insert into subcategoria values (36,4, 'Cremas corporales', 'texturas más densas para pieles muy secas');
insert into subcategoria values (37,4, 'Butters corporales', 'Hidratación intensa para pieles secas');
insert into subcategoria values (38,4, 'Aceites corporales', 'Para una hidratación profunda');
insert into subcategoria values (39,4, 'Cuchillas', 'Desechables y reutilizables');
insert into subcategoria values (40, 4,'Cera', 'En frío, en caliente, bandas depilatorias');
insert into subcategoria values (41, 4,'Crema depilatoria', 'Para eliminar el vello sin dolor.');


-- Subcategorías para "manos" (Id_Subcategoria = 3)
INSERT INTO Subcategoria (Id_Subcategoria, Id_Categoria, Nombre, Descripcion) VALUES
(42, 3, 'Cremas para manos', 'Cremas especialmente para manos suaves e hidratadas.'),
(43, 3, 'Esmaltes', 'Variedad de colores y acabados para embellecer y dar estilo a tus uñas.'),
(44, 3, 'Tratamientos de manos', 'Productos para tratamientos para las manos.'),
(45, 3, 'Limas y pulidores', 'Herramientas para dar forma y pulir las uñas de las manos.'),
(46, 3, 'Aceites para manos', 'Aceites nutritivos para rejuvenecer la piel de las manos.');

-- Subcategorías para "pies" (Id_Subcategoria = 5)
INSERT INTO Subcategoria (Id_Subcategoria, Id_Categoria, Nombre, Descripcion) VALUES
(47, 5, 'Cremas para pies', 'Cremas hidratantes y reparadoras para  los pies.'),
(48, 5, 'Exfoliantes para pies', 'Productos para eliminar las células muertas.'),
(49, 5, 'Tratamientos de pies', 'Tratamientos especiales para problemas comunes en los pies, como callos o durezas.'),
(50, 5, 'Calcetines de tratamiento', 'Calcetines impregnados con ingredientes activos para un cuidado intensivo de los pies.'),
(51, 5, 'Sprays y desodorantes para pies', 'Productos que ayudan a mantener los pies frescos y sin olor durante todo el día.');

-- Subcategorías para "productos misceláneos" (Id_Subcategoria = 6)
INSERT INTO Subcategoria (Id_Subcategoria, Id_Categoria, Nombre, Descripcion) VALUES
(52, 6, 'Herramientas de belleza', 'Accesorios diversos para facilitar la aplicación y el cuidado en la belleza personal.'),
(53, 6, 'Sets de regalo', 'Combinaciones de productos de belleza en paquetes especiales para regalar.'),
(54, 6, 'Organizadores de cosméticos', 'Soluciones para almacenar y organizar tus productos de belleza de manera eficiente.'),
(55, 6, 'Cuidado de la piel complementario', 'Productos adicionales que complementan las rutinas de cuidado de la piel.'),
(56, 6, 'Accesorios para el cabello', 'Productos y herramientas para el cuidado y estilizado del cabello.');


INSERT INTO rol (Id_Rol, Nombre, Descripcion) VALUES 
(1, "Administrador", "Tiene acceso a todas las funcionalidades del sistema"),
(2, "Vendedor", "Tiene acceso al inventario, limitado a modificaciones");

INSERT INTO empleado (Id_Empleado, Nombres, Apellidos, Correo_Electronico, Telefono, Fecha_Contrato_Inicio, Fecha_Contrato_Finalizado, Id_Rol) VALUES
(1, "Nubia", "Arias Quevedo", "Nubia.arias@gmail.com", 31685947, "1999-11-25", "2060-02-01" , 1),
(2, "Laura Valentina", "Medina Arias", "laura@hotmail.com", 5641636, "2010-10-02", "2060-02-01" , 2), 
(3, "Juanita Catalina", "Medina Arias", "juanitaca@gmail.com", 5689135, "2018-02-03", "2020-05-09", 2),
(4, "Daniel Santiago", "Vera", "daniel@hotmail.es", 85691325, "2024-01-01", "2060-02-01" , 1);

INSERT INTO cliente (Id_Cliente, Nombres_Cliente, Apellidos_Cliente, Cedula, Telefono, Direccion) VALUES    
(1, 'Ana', 'Martínez', '12345678', null, 'Calle 100 # 11-45, Bogotá');

INSERT INTO cliente (Id_Cliente, Nombres_Cliente, Apellidos_Cliente, Cedula, Telefono, Direccion) VALUES
(2, 'Carlos', 'Gómez', '23456789', '3002345678', 'Avenida 19 # 79-32, Bogotá'),
(3, 'María', 'López', '34567890', '3003456789', 'Carrera 7 # 71-23, Bogotá'),
(4, 'José', 'Fernández', '45678901', '3004567890', 'Calle 85 # 14-56, Bogotá'),
(5, 'Laura', 'García', '56789012', '3005678901', 'Avenida Chile # 10-89, Bogotá'),
(6, 'Juan', 'Pérez', '67890123', '3006789012', 'Carrera 13 # 76-45, Bogotá'),
(7, 'Claudia', 'Ramírez', '78901234', '3007890123', 'Calle 53 # 19-22, Bogotá'),
(8, 'Luis', 'Vázquez', '89012345', '3008901234', 'Calle 26 # 48-23, Bogotá'),
(9, 'Sofia', 'Castro', '90123456', '3009012345', 'Carrera 15 # 92-11, Bogotá'),
(10, 'Diego', 'Alonso', '01234567', '3000123456', 'Avenida NQS # 55-40, Bogotá');

## TABLA PRODUCTOS
INSERT INTO Producto (Nombre_Prod, Id_Subcategoria, Medida_Prod, Unidad_Medida_Prod, Costo_Prod, Iva_Prod, Porcentaje_Ganancia, Unidades_Totales_Prod, Marca_Prod, Estado, Id_Proveedor) VALUES
('Shampoo Revitalizante', 1, 500, 'Mililitros', 20000, 0.19, 0.15, 100, 'Garnier', 'Activo', 1),
('Crema Facial Hidratante', 14, 50, 'Mililitros', 15000, 0.19, 0.20, 200, 'Nivea', 'En stock', 2),
('Gel de Baño Exfoliante', 30, 300, 'Mililitros', 12000, 0.16, 0.18, 150, 'Dove', 'Desabastecido', 3),
('Crema para Manos Nutritiva', 42, 100, 'Mililitros', 10000, 0.10, 0.25, 120, 'L’Occitane', 'Activo', 4),
('Esmalte de Uñas Brillante', 47, 15, 'Mililitros', 8000, 0.08, 0.30, 250, 'Maybelline', 'En stock', 5),
('Bálsamo Labial Hidratante', 52, 4, 'Gramos', 6000, 0.1, 0.35, 300, 'Carmex', 'Activo', 6),
('Acondicionador Reparador', 1, 400, 'Mililitros', 22000, 0.19, 0.12, 80, 'Pantene', 'Desabastecido', 1),
('Limpiador Facial Antimanchas', 14, 150, 'Mililitros', 18000, 0.19, 0.22, 90, 'La Roche-Posay', 'En stock', 2),
('Crema Corporal Hidratante', 30, 500, 'Mililitros', 25000, 0.16, 0.17, 110, 'Eucerin', 'Activo', 3),
('Crema para Pies Reparadora', 47, 150, 'Mililitros', 12000, 0.12, 0.20, 130, 'Neutrogena', 'Desabastecido', 4),
('Gel de Baño Relax', 30, 200, 'Mililitros', 14000, 0.15, 0.18, 140, 'Vichy', 'En stock', 5),
('Serum Antiedad', 14, 30, 'Mililitros', 35000, 0.19, 0.25, 60, 'Estée Lauder', 'Activo', 6),
('Exfoliante Corporal Natural', 30, 250, 'Mililitros', 16000, 0.18, 0.20, 70, 'The Body Shop', 'Desabastecido', 7),
('Crema para Ojos Revitalizante', 14, 15, 'Mililitros', 22000, 0.19, 0.30, 50, 'Clinique', 'En stock', 1),
('Jabón de Manos Antibacterial', 42, 300, 'Mililitros', 10000, 0.12, 0.15, 80, 'Dettol', 'Activo', 2),
('Cremosa Facial Calmante', 14, 100, 'Mililitros', 18000, 0.19, 0.22, 75, 'Avene', 'Desabastecido', 3),
('Body Mist Floral', 30, 200, 'Mililitros', 12000, 0.10, 0.28, 100, 'Victoria’s Secret', 'En stock', 4),
('Mascarilla Capilar Reparadora', 1, 250, 'Mililitros', 22000, 0.18, 0.20, 60, 'Redken', 'Activo', 5),
('Crema Anti Estrías', 30, 150, 'Mililitros', 18000, 0.16, 0.25, 70, 'Mustela', 'Desabastecido', 6),
('Desodorante Spray', 30, 150, 'Mililitros', 9000, 0.12, 0.15, 80, 'Rexona', 'En stock', 7),
('Crema de Noche Regeneradora', 14, 50, 'Mililitros', 25000, 0.19, 0.28, 55, 'L’Oréal', 'Activo', 1),
('Pasta Dental Blanqueadora', 52, 120, 'Mililitros', 7000, 0.10, 0.12, 150, 'Sensodyne', 'Desabastecido', 2),
('Serum Hidratante Intensivo', 14, 30, 'Mililitros', 28000, 0.19, 0.30, 50, 'Neutrogena', 'En stock', 3),
('Crema Hidratante para Hombre', 30, 100, 'Mililitros', 15000, 0.14, 0.20, 80, 'Nivea', 'Activo', 4),
('Jabón Corporal Nutritivo', 30, 250, 'Gramos', 9000, 0.12, 0.15, 100, 'Dove', 'Desabastecido', 5),
('Crema para Cutículas', 42, 50, 'Mililitros', 8000, 0.10, 0.18, 90, 'Sally Hansen', 'En stock', 6),
('Esmalte de Uñas en Gel', 47, 10, 'Mililitros', 9000, 0.12, 0.22, 100, 'O.P.I', 'Activo', 7),
('Cera Depilatoria en Frío', 52, 200, 'Gramos', 12000, 0.10, 0.18, 75, 'Veet', 'Desabastecido', 1),
('Aceite de Argan', 14, 50, 'Mililitros', 27000, 0.18, 0.25, 60, 'Moroccanoil', 'En stock', 2),
('Desmaquillante Facial', 14, 200, 'Mililitros', 16000, 0.19, 0.20, 70, 'Bioderma', 'Activo', 3),
('Crema Corporal Anticelulítica', 30, 200, 'Mililitros', 20000, 0.16, 0.22, 90, 'Elancyl', 'Desabastecido', 4),
('Loción Hidratante para Pies', 47, 150, 'Mililitros', 11000, 0.14, 0.18, 80, 'Scholl', 'En stock', 5),
('Crema de Manos Hidratante', 42, 100, 'Mililitros', 9000, 0.10, 0.15, 100, 'Nivea', 'Activo', 6),
('Gel Facial Astringente', 14, 100, 'Mililitros', 14000, 0.18, 0.22, 90, 'Vichy', 'Desabastecido', 7),
('Tónico Facial Revitalizante', 14, 200, 'Mililitros', 17000, 0.19, 0.25, 70, 'La Roche-Posay', 'En stock', 1),
('Crema para el Contorno de Ojos', 14, 15, 'Mililitros', 22000, 0.19, 0.30, 60, 'Clinique', 'Activo', 2),
('Esmalte de Uñas Mate', 47, 15, 'Mililitros', 10000, 0.10, 0.25, 130, 'Revlon', 'Desabastecido', 3),
('Jabón Facial Purificante', 14, 100, 'Gramos', 14000, 0.15, 0.18, 80, 'Neutrogena', 'En stock', 4),
('Gel para Afeitar', 30, 150, 'Mililitros', 10000, 0.12, 0.20, 90, 'Gillette', 'Activo', 5),
('Crema de Manos Hidratante', 42, 100, 'Mililitros', 9000, 0.10, 0.15, 100, 'Nivea', 'Desabastecido', 6),
('Loción Anticelulítica', 30, 200, 'Mililitros', 18000, 0.14, 0.22, 70, 'L’Oréal', 'En stock', 7),
('Exfoliante Facial Suave', 14, 75, 'Mililitros', 12000, 0.12, 0.20, 90, 'Eucerin', 'Activo', 1),
('Bálsamo para Labios', 52, 10, 'Gramos', 7000, 0.10, 0.15, 150, 'Burt’s Bees', 'Desabastecido', 2),
('Cremosa Facial Calmante', 14, 100, 'Mililitros', 17000, 0.19, 0.22, 60, 'Vichy', 'En stock', 3),
('Tónico Facial Hidratante', 14, 200, 'Mililitros', 19000, 0.19, 0.25, 50, 'La Roche-Posay', 'Activo', 4),
('Exfoliante Corporal con Sal', 30, 250, 'Gramos', 15000, 0.16, 0.20, 80, 'The Body Shop', 'Desabastecido', 5),
('Gel Hidratante para Manos', 42, 100, 'Mililitros', 11000, 0.12, 0.18, 70, 'Eucerin', 'En stock', 6),
('Crema Reparadora para Pies', 47, 150, 'Mililitros', 13000, 0.14, 0.2, 90, 'Neutrogena', 'Activo', 7),
('Serum Facial Iluminador', 14, 30, 'Mililitros', 29000, 0.19, 0.3, 55, 'Clinique', 'Desabastecido', 1),
('Jabón Facial de Miel', 14, 100, 'Gramos', 12000, 0.15, 0.18, 65, 'The Body Shop', 'En stock', 2),
('Crema de Manos Protector', 42, 100, 'Mililitros', 9500, 0.1, 0.2, 85, 'Neutrogena', 'Activo', 3),
('Esmalte de Uñas Hidratante', 47, 10, 'Mililitros', 8500, 0.1, 0.25, 100, 'Maybelline', 'Desabastecido', 4),
('Crema Corporal Suavizante', 30, 500, 'Mililitros', 23000, 0.16, 0.22, 95, 'Nivea', 'En stock', 5),
('Desmaquillante de Ojos', 14, 125, 'Mililitros', 14000, 0.19, 0.22, 70, 'Bioderma', 'Activo', 6),
('Gel para Manos Hidratante', 42, 200, 'Mililitros', 12000, 0.12, 0.18, 75, 'Dettol', 'Desabastecido', 7),
('Loción Antimanchas Corporal', 30, 250, 'Mililitros', 21000, 0.14, 0.25, 85, 'Eucerin', 'En stock', 1),
('Aceite Esencial de Lavanda', 52, 30, 'Mililitros', 15000, 0.1, 0.30, 60, 'L’Occitane', 'Activo', 2),
('Mascarilla Facial Purificante', 14, 75, 'Mililitros', 17000, 0.19, 0.2, 50, 'La Roche-Posay', 'Desabastecido', 3),
('Crema Hidratante para Cuerpo', 30, 500, 'Mililitros', 24000, 0.16, 0.22, 90, 'Vichy', 'En stock', 4),
('Crema para Ojos Antiarrugas', 14, 15, 'Mililitros', 24000, 0.19, 0.28, 55, 'Clinique', 'Activo', 5),
('Jabón Corporal Exfoliante', 30, 200, 'Gramos', 13000, 0.14, 0.2, 75, 'Dove', 'Desabastecido', 6),
('Crema para Cutículas Hidratante', 42, 30, 'Mililitros', 9000, 0.1, 0.15, 85, 'Sally Hansen', 'En stock', 7);

## TABLA VENTA
INSERT INTO Venta (Fecha_Venta, Total_Venta, Id_Empleado) VALUES
('2024-09-01 10:00:00', 75000, 1),
('2024-09-01 11:30:00', 56000, 2),
('2024-09-02 09:00:00', 120000, 3),
('2024-09-02 10:30:00', 34000, 4),
('2024-09-03 14:00:00', 88000, 1),
('2024-09-03 15:00:00', 65000, 2),
('2024-09-04 10:00:00', 145000, 3),
('2024-09-04 11:30:00', 70000, 4),
('2024-09-05 12:00:00', 30000, 1),
('2024-09-05 13:30:00', 95000, 2),
('2024-09-06 09:00:00', 72000, 3),
('2024-09-06 10:30:00', 45000, 4),
('2024-09-07 11:00:00', 110000, 1),
('2024-09-07 12:30:00', 33000, 2),
('2024-09-08 14:00:00', 90000, 3),
('2024-09-08 15:30:00', 50000, 4),
('2024-09-09 10:00:00', 130000, 1),
('2024-09-09 11:30:00', 67000, 2),
('2024-09-10 12:00:00', 45000, 3),
('2024-09-10 13:30:00', 100000, 4);

## TABLA DE PAGOS
INSERT INTO Tabla_de_Pagos (Id_Pagos, Metodos_de_Pago, Total_a_Pagar, Fecha_de_Pago, Estado_Pago, Id_Venta) VALUES
(1, 'Tarjeta de Crédito', 75000, '2024-09-01 10:15:00', 'Pagado', 1),
(2, 'Efectivo', 56000, '2024-09-01 11:45:00', 'Pagado', 2),
(3, 'Transferencia Bancaria', 120000, '2024-09-02 09:15:00', 'Pagado', 3),
(4, 'Tarjeta de Débito', 34000, '2024-09-02 11:00:00', 'Pendiente', 4),
(5, 'Efectivo', 88000, '2024-09-03 14:15:00', 'Pagado', 5),
(6, 'Tarjeta de Crédito', 65000, '2024-09-03 15:30:00', 'Pagado', 6),
(7, 'Transferencia Bancaria', 145000, '2024-09-04 10:15:00', 'Pendiente', 7),
(8, 'Efectivo', 70000, '2024-09-04 11:45:00', 'Pagado', 8),
(9, 'Tarjeta de Débito', 30000, '2024-09-05 12:15:00', 'Pagado', 9),
(10, 'Transferencia Bancaria', 95000, '2024-09-05 14:00:00', 'Pendiente', 10),
(11, 'Tarjeta de Crédito', 72000, '2024-09-06 09:15:00', 'Pagado', 11),
(12, 'Efectivo', 45000, '2024-09-06 10:45:00', 'Pagado', 12),
(13, 'Transferencia Bancaria', 110000, '2024-09-07 11:15:00', 'Pendiente', 13),
(14, 'Tarjeta de Débito', 33000, '2024-09-07 12:00:00', 'Pagado', 14),
(15, 'Efectivo', 90000, '2024-09-08 14:15:00', 'Pagado', 15),
(16, 'Tarjeta de Crédito', 50000, '2024-09-08 15:00:00', 'Pagado', 16),
(17, 'Transferencia Bancaria', 130000, '2024-09-09 10:30:00', 'Pendiente', 17),
(18, 'Efectivo', 67000, '2024-09-09 11:30:00', 'Pagado', 18),
(19, 'Tarjeta de Débito', 45000, '2024-09-10 12:00:00', 'Pagado', 19),
(20, 'Transferencia Bancaria', 100000, '2024-09-10 13:30:00', 'Pendiente', 20);


## TABLA FACTURA
INSERT INTO Factura (Impuestos_Factura, Fecha_Generacion_Factura, Id_Pagos) VALUES
(19.00, '2024-09-01 10:30:00', 1);
INSERT INTO Factura (Impuestos_Factura, Fecha_Generacion_Factura, Id_Pagos) VALUES(19.00, '2024-09-01 12:00:00', 2),
(19.00, '2024-09-02 09:30:00', 3),
(19.00, '2024-09-02 11:15:00', 4),
(19.00, '2024-09-03 14:30:00', 5),
(19.00, '2024-09-03 16:00:00', 6),
(19.00, '2024-09-04 10:30:00', 7),
(19.00, '2024-09-04 12:00:00', 8),
(19.00, '2024-09-05 12:30:00', 9),
(19.00, '2024-09-05 14:15:00', 10),
(19.00, '2024-09-06 09:30:00', 11),
(19.00, '2024-09-06 11:00:00', 12),
(19.00, '2024-09-07 11:30:00', 13),
(19.00, '2024-09-07 12:15:00', 14),
(19.00, '2024-09-08 14:30:00', 15),
(19.00, '2024-09-08 15:00:00', 16),
(19.00, '2024-09-09 10:30:00', 17),
(19.00, '2024-09-09 11:30:00', 18),
(19.00, '2024-09-10 12:00:00', 19),
(19.00, '2024-09-10 13:30:00', 20);

## TABLA Detalle_Venta_Productos

INSERT INTO Detalle_Venta_Productos (Id_Venta, Id_Producto, Cantidad, Precio_unidad, Id_Cliente) VALUES
(1, 1, 2, 75000, 1),
(1, 2, 1, 56000, 2),
(2, 3, 3, 120000, 3),
(2, 4, 1, 34000, 4),
(3, 5, 4, 88000, 5),
(3, 6, 2, 65000, 6),
(4, 7, 5, 145000, 7),
(4, 8, 1, 70000, 8),
(5, 9, 6, 30000, 9),
(5, 10, 3, 95000, 10),
(6, 11, 2, 72000, 1),
(6, 12, 1, 45000, 2),
(7, 13, 4, 110000, 3),
(7, 14, 3, 33000, 4),
(8, 15, 5, 90000, 5),
(8, 1, 1, 75000, 6),
(9, 2, 3, 56000, 7),
(9, 3, 2, 120000, 8),
(10, 4, 1, 34000, 9),
(10, 5, 3, 88000, 10),
(11, 6, 2, 65000, 1),
(11, 7, 1, 145000, 2),
(12, 8, 1, 70000, 3),
(12, 9, 2, 30000, 4),
(13, 10, 3, 95000, 5),
(13, 11, 2, 72000, 6),
(14, 12, 1, 45000, 7),
(14, 13, 4, 110000, 8),
(15, 14, 3, 33000, 9),
(15, 15, 5, 90000, 10),
(16, 1, 2, 75000, 1),
(16, 2, 1, 56000, 2),
(17, 3, 3, 120000, 3),
(17, 4, 1, 34000, 4),
(18, 5, 4, 88000, 5),
(18, 6, 2, 65000, 6),
(19, 7, 5, 145000, 7),
(19, 8, 1, 70000, 8),
(20, 9, 6, 30000, 9);
