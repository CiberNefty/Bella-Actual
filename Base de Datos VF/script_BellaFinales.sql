DROP DATABASE IF EXISTS db_bella_actual;
CREATE DATABASE IF NOT EXISTS db_bella_actual;
USE db_bella_actual;

create table Proveedor (
Id_Proveedor int primary key auto_increment,
Nombre_Prov varchar (50),
Telefono_Prov varchar(50),
Direccion_Prov varchar(60));

create table Categoria(
Id_Categoria int primary key auto_increment,
Nombre_Cat varchar(80) not null,
Descripcion_Cat varchar(150));

create table  Subcategoria (
Id_Subcategoria int primary key auto_increment,
Nombre_Subcategoria varchar(80),
Descripcion_Subcategoria varchar(150),
Id_Categoria int not null,
foreign key (Id_Categoria) references Categoria(Id_Categoria));


create table Producto(
Id_Producto int primary key auto_increment,
Nombre_Prod varchar(100) not null,
Medida_Prod int(10),
Unidad_Medida_Prod varchar(50),
Precio_Bruto_Prod decimal(19,0),
Iva_Prod decimal(3,2),
Porcentaje_Ganancia decimal(3,2),
Precio_Neto_Unidad_Prod decimal(19,2) generated always as (((Precio_Bruto_Prod * Iva_Prod) + (Precio_Bruto_Prod * Porcentaje_Ganancia) + Precio_Bruto_Prod )) stored,
Unidades_Totales_Prod  int not null,
Marca_Prod varchar(60),
Estado_Prod varchar(50),
Id_Proveedor int not null,
Id_Subcategoria int not null,
foreign key (Id_Proveedor) references Proveedor(Id_Proveedor) ,
foreign key (Id_Subcategoria) references Subcategoria(Id_Subcategoria));


create table  Fecha_Registro_Prod(
Id_Fecha_Registro int primary key auto_increment,
Fecha_Registro date,
Cantidad int not null, 
Id_Proveedor int not null,
Id_Producto int not null,
foreign key(Id_Proveedor) references Proveedor(Id_Proveedor),
foreign key (Id_Producto) references Producto(Id_Producto));

create table Rol (
Id_Rol int primary key auto_increment,
Nombre_Rol varchar(60));

create table Usuario(
Id_Usuario int primary key auto_increment,
Nombre_Usu varchar(70) not null,
Contraseña_Usu varchar(255) not null,
Email_Usu varchar(150) not null,
Telefono_Usu varchar(20) not null,
Fecha_Inicio_Contrato_Usu date null,
Cedula_Usu varchar(20) not null,
Id_Rol int not null,
foreign key (Id_Rol) references Rol(Id_Rol));


create table Factura (
Id_Factura int primary key auto_increment,
Impuestos_Fact decimal(5,2),
Fecha_Generacion_Fact timestamp not null
);

create table Venta (
Id_Venta int primary key auto_increment,
Fecha_Venta timestamp not null,
Total_Venta  decimal(19,0),
Id_Usuario int not null,
Forma_Pago_Fact varchar(50),
foreign key (Id_Usuario ) references Usuario(Id_Usuario)
);

create table Detalle_Venta(
Id_Detalle_Venta int primary key auto_increment,
Cantidad int not null,
Precio_Unidad decimal(19,0),
Id_Venta int not null,
Id_Producto int not null,
Id_Factura int not null,
foreign key (Id_Venta) references Venta (Id_Venta),
foreign key (Id_Factura) references Factura (Id_Factura),
foreign key (Id_Producto) references Producto(Id_Producto) );

INSERT INTO rol (Nombre_Rol) VALUES ("Administrador"), ("Empleado")
