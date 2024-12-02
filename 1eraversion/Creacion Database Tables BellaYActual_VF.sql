DROP DATABASE IF EXISTS Bella_Y_Actual_V3;
CREATE DATABASE IF NOT EXISTS Bella_Y_Actual_V3;
USE Bella_Y_Actual_V3;
CREATE TABLE Empresas_Proveedoras (
  Id_Empresas_proveedoras INT AUTO_INCREMENT comment 'Indicativo por cada empresa', 
  Nombre                  VARCHAR(255) comment 'Este campo sirve  para guardar el nombre de la empresa', 
  Encargado_Despacho      VARCHAR(255) NOT NULL comment 'El encargado de entregarle los productos al proveedor', 
  Telefono_Empresa        INT comment 'Numero de contacto de la empresa', 
  Direccion_Empresa       VARCHAR(255) comment 'Dirección donde se encuentra la empresa', 
  CONSTRAINT PK_Id_Empresas_Proveedoras PRIMARY KEY (Id_Empresas_proveedoras));

CREATE TABLE Proveedor (
  Id_Proveedor                      INT NOT NULL comment 'Es el indicativo o la llave primaria del proveedor', 
  Cedula                            INT NOT NULL comment 'Datos del proveedor para poder identificarlo', 
  Nombre_Prove                      VARCHAR(150) NOT NULL comment 'Nombre de quien entrega los productos' 				, 
  Apellido_Prov                     VARCHAR(150) NOT NULL comment 'Apellidos de quien entrega los productos', 
  Telefono_Prov                     VARCHAR(25) NULL comment 'Numero de contacto del proveedor', 
  Direccion_Prov                    VARCHAR(255) NULL comment 'Dirección del proveedor', 
  Id_Empresas_proveedoras 			INT NOT NULL comment 'Esta es la llave foranea que indica a cual empresa pertenece cada proveedor', 
  PRIMARY KEY (Id_Proveedor),
  CONSTRAINT FK_Proveedor_EmpresasProveedoras FOREIGN KEY (Id_Empresas_proveedoras) REFERENCES Empresas_Proveedoras(Id_Empresas_proveedoras));
  
CREATE TABLE Cliente (
  Id_Cliente        INT NOT NULL AUTO_INCREMENT comment 'Indicativo del cliente en la empresa', 
  Nombres_Cliente   VARCHAR(100) NOT NULL comment 'Nombres del cliente', 
  Apellidos_Cliente VARCHAR(100) NOT NULL comment 'Apellidos del cliente', 
  Cedula            VARCHAR(15) UNIQUE NOT NULL comment 'Indicativo gubernamental donde indica cual es indicativo por ser una persona', 
  Telefono          VARCHAR(15) NULL comment 'Numero telefonico del cliente', 
  Direccion         VARCHAR(255) NULL comment 'Direccion de residencia del cliente', 
  CONSTRAINT PK_Id_Cliente PRIMARY KEY (Id_Cliente));
  
CREATE TABLE Rol (
  Id_Rol      INT NOT NULL, 
  Nombre      VARCHAR(150), 
  Descripcion VARCHAR(255) NULL,
  CONSTRAINT PK_Id_Rol PRIMARY KEY (Id_Rol));
    
CREATE TABLE Empleado (
  Id_Empleado               INT AUTO_INCREMENT NOT NULL comment 'Identificador de la entidad en la empresa del Empleado', 
  Nombres                   VARCHAR(100) NOT NULL comment 'Nombres del empleado', 
  Apellidos                 VARCHAR(100) NOT NULL comment 'Apellidos del empleado', 
  Correo_Electronico        varchar(100) NOT NULL comment 'correo electronico de contacto del empleado', 
  Telefono                  INT NOT NULL comment 'Telefono celular principal del empleado', 
  Fecha_Contrato_Inicio     DATE NOT NULL comment 'fecha de inicio de contrato', 
  Fecha_Contrato_Finalizado DATE NOT NULL comment 'fecha de finalizacion de contrato', 
  Id_Rol                 	INT NOT NULL comment 'Llave foranea donde indica a cual rol pertenece cada empleado', 
  CONSTRAINT PK_Id_Empleado PRIMARY KEY (Id_Empleado),
  CONSTRAINT FK_Empleado_Rol FOREIGN KEY (Id_Rol) REFERENCES Rol(Id_Rol));
  
CREATE TABLE Venta (
  Id_Venta            INT NOT NULL AUTO_INCREMENT comment 'Indicativo por cada venta', 
  Fecha_Venta         TIMESTAMP comment 'Fecha de transaccion en la cual se realizo la venta', 
  Total_Venta         DECIMAL(19, 0) comment 'Total de la venta calculada por la cantidad de productos y precio de la unidad', 
  Id_Empleado		  INT NOT NULL,
  PRIMARY KEY (Id_Venta),
  CONSTRAINT FK_Venta_Empleado FOREIGN KEY (Id_Empleado) REFERENCES Empleado(Id_Empleado));

CREATE TABLE Tabla_de_Pagos (
  Id_Pagos          INT NOT NULL AUTO_INCREMENT, 
  Metodos_de_Pago   VARCHAR(100), 
  Total_a_Pagar     DECIMAL(19, 0) NOT NULL, 
  Fecha_de_Pago     TIMESTAMP NOT NULL, 
  Estado_Pago       VARCHAR(100) NOT NULL, 
  Id_Venta     		INT NOT NULL, 
  CONSTRAINT PK_Id_Pagos PRIMARY KEY (Id_Pagos),
  CONSTRAINT FK_TablaDePagos_Venta FOREIGN KEY (Id_Venta) REFERENCES Venta(Id_Venta));
  
  CREATE TABLE Factura (
  Id_Factura               INT NOT NULL AUTO_INCREMENT comment 'Idicativo para la empresa que indica cual el numero de registro de la factura', 
  Impuestos_Factura        DECIMAL(5,2) comment 'Impuestos que se le cobran al cliente por su cobro', 
  Fecha_Generacion_Factura timestamp NULL comment 'Fecha en la que se genero la factura', 
  Id_Pagos 				   INT NOT NULL,
  CONSTRAINT PK_Id_Factura PRIMARY KEY (Id_Factura),
  CONSTRAINT FK_Factura_TablaDePagos FOREIGN KEY (Id_Pagos) REFERENCES Tabla_de_Pagos(Id_Pagos));

CREATE TABLE Categoria (
  Id_Categoria                INT NOT NULL AUTO_INCREMENT comment 'Es indicativo por cada categoria que exista.', 
  Nombre                      VARCHAR(255) NOT NULL comment ' Indica el nombre de la categoria', 
  Descripcion                 VARCHAR(255) NULL comment 'Una pequeña descripción de lo que contiene cada categoría', 
  CONSTRAINT PK_Id_Categoria PRIMARY KEY (Id_Categoria));
  
  CREATE TABLE Subcategoria (
  Id_Subcategoria INT auto_increment NOT NULL, 
  Id_Categoria INT NOT NULL,
  Nombre          VARCHAR(150) comment 'Este campo me indica lo que seria el nombre de una subcategoria', 
  Descripcion     VARCHAR(255) NOT NULL comment 'Aqui va la descripcion relacionada a lo que deberia indicar una subcategoria', 
  CONSTRAINT PK_Id_Subcategoria PRIMARY KEY (Id_Subcategoria) comment 'Esta tabla indica todas las subcategorias que contiene una categoria',
  CONSTRAINT FK_Subcategoria_Categoria FOREIGN KEY (Id_Categoria) REFERENCES Categoria (Id_Categoria));
  
CREATE TABLE Producto (
  Id_Producto           INT AUTO_INCREMENT COMMENT 'Este Campo es el indicativo por cada Categoria', 
  Nombre_Prod           VARCHAR(100) COMMENT 'Este campo indica el nombre del producto', 
  Id_Subcategoria 			INT NOT NULL COMMENT 'Aqui es la llave forania donde indica que tipo de categoria pertenece el producto', 
  Medida_Prod           INT COMMENT 'Es el tipo de unidad de medida el cual indica cuanta cantidad tiene el producto.', 
  Unidad_Medida_Prod    VARCHAR(50) NOT NULL COMMENT 'Este campo indica en que tamaño esta indicado el producto', 
  Costo_Prod            DECIMAL(19,0), 
  Iva_Prod              DECIMAL(3,2) COMMENT 'Este campo indica cuanto el impuesto que se nos cobro por la compra del producto', 
  Porcentaje_Ganancia   DECIMAL(3,2) COMMENT 'Este campo nos indica el porcentaje de ganancia que le vamos a ganar por cada producto.', 
  Precio_Unidad_Prod    DECIMAL(19, 2) GENERATED ALWAYS AS (((Costo_Prod * Iva_Prod) + (Costo_Prod * Porcentaje_Ganancia) + Costo_Prod)) STORED comment 'Este campo me indica a como va a quedar el producto haciendo la operacion matematica', 
  Unidades_Totales_Prod INT NOT NULL comment 'Este campo me dice cuantos productos existen.', 
  Marca_Prod            VARCHAR(150) NOT NULL comment 'Este campo me informa de que empresa es el producto.', 
  Estado                VARCHAR(50) NOT NULL comment 'Este campo me informa en que estado se encuentra el producto.', 
  Id_Proveedor		    INT NOT NULL comment 'Este campo me indica cual fue el proveedor que me trajo el producto y es una llave foranea ya que me comparte informacion de otra tabla.', 
  CONSTRAINT PK_Id_Producto PRIMARY KEY (Id_Producto),
  CONSTRAINT FK_Producto_Proveedor FOREIGN KEY (Id_Proveedor) REFERENCES Proveedor(Id_Proveedor),
  CONSTRAINT FK_Producto_Subcategoria FOREIGN KEY (Id_Subcategoria) REFERENCES Subcategoria(Id_Subcategoria));

CREATE TABLE Detalle_Venta_Productos (
  Id_Detalle_Venta_Producto INT NOT NULL AUTO_INCREMENT, 
  Id_Venta              	INT NOT NULL, 
  Id_Producto        		INT NOT NULL, 
  Cantidad                  INT NOT NULL, 
  Precio_unidad             DECIMAL(19, 0), 
  Id_Cliente          		INT NOT NULL, 
  CONSTRAINT PK_Id_DetalleVentaProducto PRIMARY KEY (Id_Detalle_Venta_Producto), 
  CONSTRAINT FK_DetalleVentaProductos_Venta FOREIGN KEY (Id_Venta) REFERENCES Venta(Id_Venta), 
  CONSTRAINT FK_DetalleVentaProductos_Producto FOREIGN KEY (Id_Producto) REFERENCES Producto(Id_Producto),
  CONSTRAINT FK_DetalleVentaProductos_Cliente FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente));

    
/*ALTER TABLE Producto ADD CONSTRAINT FKProducto_Proveedor FOREIGN KEY (ProveedorId_Prod) REFERENCES Proveedor (Id_Proveedor);
ALTER TABLE Proveedor ADD CONSTRAINT FKProveedor_Empresasproveedoras FOREIGN KEY (Empresas_ProveedorasId_Empresas_proveedoras) REFERENCES Empresas_Proveedoras (Id_Empresas_proveedoras);
ALTER TABLE Empleado ADD CONSTRAINT FKEmpleado_Rol FOREIGN KEY (RolId_Rol) REFERENCES Rol (Id_Rol);
ALTER TABLE Producto ADD CONSTRAINT FKProducto_Categoria FOREIGN KEY (CategoriaId_Categoria) REFERENCES Categoria (Id_Categoria);
ALTER TABLE Detalle_Venta_Productos ADD CONSTRAINT FKDetalle_Venta_Producto FOREIGN KEY (ProductoId_Producto) REFERENCES Producto (Id_Producto);
ALTER TABLE Detalle_Venta_Productos ADD CONSTRAINT FKDetalle_Venta_Venta FOREIGN KEY (VentaId_Venta) REFERENCES Venta (Id_Venta);
ALTER TABLE Detalle_Venta_Productos ADD CONSTRAINT FKDetalle_Cliente FOREIGN KEY (ClienteId_Cliente) REFERENCES Cliente (Id_Cliente);
ALTER TABLE Tabla_de_Pagos ADD CONSTRAINT FKTabla_de_Pagos_Factura FOREIGN KEY (FacturaId_Factura) REFERENCES Factura (Id_Factura);
ALTER TABLE Tabla_de_Pagos ADD CONSTRAINT FKTabla_de_Pagos_Venta FOREIGN KEY (VentaId_Venta) REFERENCES Venta (Id_Venta);
ALTER TABLE Venta ADD CONSTRAINT FKVenta_Empleado FOREIGN KEY (EmpleadoId_Empleado) REFERENCES Empleado (Id_Empleado);
ALTER TABLE Categoria ADD CONSTRAINT FKCategoria_Subcategoria FOREIGN KEY (SubcategoriaId_Subcategoria) REFERENCES Subcategoria (Id_Subcategoria); */
