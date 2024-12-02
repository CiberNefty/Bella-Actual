# CONSULTAS
USE Bella_Y_Actual_V3;

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
SELECT * FROM EMPRESAS_PROVEEDORAS;

#Mostrar Todos los encargados que con su nombre contenga la letra (o) en orden descendente
SELECT * FROM EMPRESAS_PROVEEDORAS WHERE Encargado_Despacho LIKE '%o%' ORDER BY Id_Empresas_Proveedoras DESC;

#-------------------------------------------------------------------------------------------------
# TABLA Proveedor

# Mostrar todos los proveedores que existen
SELECT * FROM Proveedor;

#Mostrar solamente el nombre del proveedors y para que empresa trabaja
SELECT Nombre_prove, id_Empresas_proveedoras FROM Proveedor;
# ------------------------------------------------------------------------------------------------
# TABLA CLIENTE

# Mostrar todos los clientes en existencia
SELECT * FROM Cliente;

# Mostrar los quientes que como direccion que vivan en una calle y en una avenida
SELECT * FROM Cliente WHERE Direccion NOT LIKE ('Calle%');

SELECT * FROM Cliente WHERE Direccion NOT LIKE '#_[987]';
#-------------------------------------------------------------------------------------------------
# TABLA ROL

#Mostrar todos los roles
SELECT * FROM Rol;
#-------------------------------------------------------------------------------------------------
# TABLA EMPLEADO

# Mostrar todos los empleados
SELECT * FROM Empleado;
#--------------------------------------------------------------------------------------------------
# TABLA DE VENTAS

# Mostrar todas las ventas en total
SELECT * FROM VENTA;
#-------------------------------------------------------------------------------------------------#
# JOINS

## Mostrar todos los proveedores de cada empresa
SELECT p.id_proveedor,p.nombre_Prove, ep.Nombre FROM Proveedor as p JOIN Empresas_Proveedoras as ep ON ep.Id_Empresas_Proveedoras = p.id_empresas_proveedoras;

## Mostrar la cantidad de proveedores que tiene cada empresa
SELECT ep.id_Empresas_proveedoras AS ID, ep.Nombre AS 'EMPRESA',COUNT(p.nombre_prove) AS 'Cantidad Proveedores' FROM Empresas_Proveedoras as ep LEFT JOIN Proveedor as p ON ep.Id_Empresas_Proveedoras = p.id_empresas_proveedoras
group by ep.id_Empresas_proveedoras;

## Mostrar el nombre del empleado, el rol que tiene y la descripcion del rol que se le otorgo.
SELECT empleado.nombres, rol.nombre, rol.descripcion FROM empleado CROSS JOIN rol ON empleado.id_rol = rol.id_rol;

## Todas las ventas que un empleado a realizado, pero solo muestrame el nombre del empleado y el identificador de la venta:
SELECT empleado.Nombres, venta.id_venta FROM empleado INNER JOIN venta ON venta.id_empleado = empleado.id_empleado;

## Mostrar las cantidades de ventas y la suma total de esas ventas de un empleado.
SELECT empleado.Nombres Empleado, COUNT(venta.id_venta) 'Numero de ventas por empleado', SUM(venta.Total_Venta) AS 'Total de ventas por empleado' FROM empleado INNER JOIN venta ON empleado.id_empleado = venta.id_empleado GROUP BY empleado.nombres;

## Muestrame las fechas de cada venta a partir de una fecha en especifico y el nombre del empleado contenga un e en su nombre:
SELECT empleado.Nombres Empleado, venta.id_venta, venta.fecha_venta FROM empleado INNER JOIN venta ON empleado.id_empleado = venta.id_empleado
WHERE venta.fecha_venta <= '2024-09-07' AND empleado.Nombres LIKE '%e%';

## Muestrame en la tabla de pago el metodo de pago en efectivo.
SELECT * FROM Tabla_De_Pagos WHERE Metodos_de_Pago = 'Efectivo';

## Muestrame en la tabla de pago el estado de pendiente.
SELECT * FROM Tabla_De_Pagos WHERE Estado_Pago NOT LIKE 'Paga%';
