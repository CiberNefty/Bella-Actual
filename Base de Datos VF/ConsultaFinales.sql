# CONSULTAS
USE db_bella_Actual;

# TABLA PRODUCTO

## Visualizar todos los productos del inventario
SELECT * FROM producto;

## Selecionar los productos que contienen la medida de mas de 350 mililitros
SELECT * FROM producto WHERE medida_prod >= 350 AND Unidad_Medida_prod = 'Mililitros';

# Mostrar todos los productos donde su porcentaje de ganancia sea menor á 0.11%
SELECT * FROM producto WHERE Porcentaje_Ganancia <= 0.14;

# Mostrar todos los productos que comiencen con el nombre Esmalte
SELECT * FROM producto WHERE Nombre_Prod LIKE 'Esmalte%' LIMIT 0, 1000;

# Mostrar todos los productos que esten en estado 'Desabastecido'
SELECT * FROM producto WHERE Estado = 'Desabastecido';

#_----------------------------------------------------------------------------------------------

# TABLA EMPRESAS_PROVEEDORAS

# Mostrar todas las empresas que existen para proveer
#SELECT * FROM EMPRESAS_PROVEEDORAS;

#Mostrar Todos los encargados que con su nombre contenga la letra (o) en orden descendente
#SELECT * FROM EMPRESAS_PROVEEDORAS WHERE Encargado_Despacho LIKE '%o%' ORDER BY Id_Empresas_Proveedoras DESC;

#-------------------------------------------------------------------------------------------------
# TABLA Proveedor

# Mostrar todos los proveedores que existen
SELECT * FROM Proveedor;

#Mostrar solamente el nombre del proveedors y para que empresa trabaja
SELECT Nombre_prov, id_proveedor FROM Proveedor;
# ------------------------------------------------------------------------------------------------
# TABLA CLIENTE

# Mostrar todos los clientes en existencia
#SELECT * FROM Cliente;

# Mostrar los quientes que como direccion que vivan en una calle y en una avenida
#SELECT * FROM Cliente WHERE Direccion NOT LIKE ('Calle%');

#SELECT * FROM Cliente WHERE Direccion NOT LIKE '#_[987]';
#-------------------------------------------------------------------------------------------------
# TABLA ROL

#Mostrar todos los roles
SELECT * FROM Rol;
#-------------------------------------------------------------------------------------------------
# TABLA EMPLEADO

# Mostrar todos los empleados
SELECT * FROM usuario;
#--------------------------------------------------------------------------------------------------
# TABLA DE VENTAS

# Mostrar todas las ventas en total
SELECT * FROM VENTA;
#-------------------------------------------------------------------------------------------------#
# JOINS

## Mostrar todos los proveedores de cada empresa
#SELECT p.id_proveedor,p.nombre_Prov, ep.Nombre FROM Proveedor as p JOIN Empresas_Proveedoras as ep ON ep.Id_Empresas_Proveedoras = p.id_empresas_proveedoras;

## Mostrar la cantidad de proveedores que tiene cada empresa
#SELECT ep.id_Empresas_proveedoras AS ID, ep.Nombre AS 'EMPRESA',COUNT(p.nombre_prove) AS 'Cantidad Proveedores' FROM Empresas_Proveedoras as ep LEFT JOIN Proveedor as p ON ep.Id_Empresas_Proveedoras = p.id_empresas_proveedoras
#group by ep.id_Empresas_proveedoras;

## Mostrar el nombre del empleado, el rol que tiene y la descripcion del rol que se le otorgo.
SELECT usuario.nombre_Usu, rol.nombre_rol FROM usuario CROSS JOIN rol ON usuario.id_rol = rol.id_rol;

## Todas las ventas que un usuario a realizado, pero solo muestrame el nombre del empleado y el identificador de la venta:
SELECT usuario.Nombre_usu, venta.id_venta FROM usuario INNER JOIN venta ON venta.id_usuario = usuario.id_usuario;

## Mostrar las cantidades de ventas y la suma total de esas ventas de un usuario.
SELECT usuario.Nombre_usu Empleado, COUNT(venta.id_venta) 'Numero de ventas por empleado', SUM(venta.Total_Venta) AS 'Total de ventas por empleado' FROM usuario INNER JOIN venta ON usuario.id_usuario = venta.id_usuario GROUP BY usuario.nombre_usu;

## Muestrame las fechas de cada venta a partir de una fecha en especifico y el nombre del empleado contenga una (e) en su nombre:
SELECT usuario.Nombre_Usu as Empleado, venta.id_venta, venta.fecha_venta FROM usuario INNER JOIN venta ON usuario.id_usuario = venta.id_usuario
WHERE venta.fecha_venta <= '2024-09-07' AND usuario.Nombre_usu LIKE '%e%';

## Muestrame en la tabla de pago el metodo de pago en efectivo.
#SELECT * FROM Tabla_De_Pagos WHERE Metodos_de_Pago = 'Efectivo';

## Muestrame en la tabla de pago el estado de pendiente.
#SELECT * FROM Tabla_De_Pagos WHERE Estado_Pago NOT LIKE 'Paga%';

# Mostrar los productos con sus respectivos proveedores
SELECT * FROM Producto as p 
INNER JOIN proveedor as pr ON p.id_proveedor = pr.id_proveedor
INNER JOIN subcategoria as sc ON p.id_subcategoria = sc.id_subcategoria;

# Mostrar el nombre del producto, nombre de la subcategoria a la que pertenece, unidad demedidad, precio unidad, marca con sus respectivos proveedores
SELECT p.nombre_prod, sc.nombre_subcategoria, p.unidad_medida_prod, p.precio_neto_unidad_prod, p.marca_prod, pr.nombre_prov FROM Producto as p 
INNER JOIN proveedor as pr ON p.id_proveedor = pr.id_proveedor
CROSS JOIN subcategoria as sc ON p.id_subcategoria = sc.id_subcategoria;

# Mostrar el nombre del producto, nombre de la subcategoria a la que pertenece, unidad demedidad, precio unidad, marca con sus respectivos proveedores agrupando simplemente el id y mostrandome los datos acendentemente
SELECT p.nombre_prod, sc.nombre_subcategoria, p.unidad_medida_prod, p.precio_neto_unidad_prod, p.marca_prod, pr.nombre_prov FROM Producto as p  
left JOIN proveedor as pr ON p.id_proveedor = pr.id_proveedor
left JOIN subcategoria as sc ON p.id_subcategoria = sc.id_subcategoria
INNER JOIN categoria as ca ON sc.id_categoria = ca.id_categoria
GROUP BY p.id_producto
ORDER BY p.id_producto ASC;

# Mostrar el nombre del producto, nombre de la subcategoria a la que pertenece, unidad demedidad, precio unidad, marca con sus respectivos proveedores agrupando simplemente el id y mostrandome los datos acendentemente
# Donde memuestres los productos que tienen un precio de unidad de 5000 pesos en adelante
SELECT p.nombre_prod, sc.nombre_subcategoria, p.unidad_medida_prod, p.precio_neto_unidad_prod, p.marca_prod, pr.nombre_prov FROM Producto as p  
left JOIN proveedor as pr ON p.id_proveedor = pr.id_proveedor
left JOIN subcategoria as sc ON p.id_subcategoria = sc.id_subcategoria
INNER JOIN categoria as ca ON sc.id_categoria = ca.id_categoria
WHERE p.precio_neto_unidad_prod >= '5000'
GROUP BY p.id_producto
ORDER BY p.id_producto ASC;
