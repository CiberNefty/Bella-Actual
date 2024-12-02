
from flask import Flask
from flask_migrate import Migrate
from flask_sqlalchemy import SQLAlchemy

app= Flask(__name__)

# configuar la base de datos


USER_DB = 'root'
PASS_DB = '' # si tiene contraseña se pone
URL_DB = 'localhost'
NAME_DB = 'bella_actual'
FULL_URL_DB = f'mysql+pymsql://{USER_DB}: {PASS_DB}@{URL_DB}/{NAME_DB}'

app.config['SQLALCHEMY_DATABASE_URI'] = FULL_URL_DB
app.config ['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db= SQLAlchemy(app)


# configuracion de la migracion     codigo de ejecucion  "flask db init"

migrate= Migrate()
migrate.init_app(app, db)





#definir Mo para mapearlo a la base de datos  CODIGO DE EJECUCION :  "flask db migrate"

class Proveedor(db.Model):
    id_Proveedor = db.Column(db.Integer, primary_key = True)
    Nombre_Prov = db.Column(db.string(50))
    Telefono_Prov = db.Column(db.string(50))
    Direccion_Prov = db.Column(db.string(30))

    def __int__(self, id_Proveedor, Nombre_Prov, Telefono_Prov, Direccion_Prov):
        self.id_Proveedor = id_Proveedor
        self.Nombre_Prov = Nombre_Prov
        self.Telefono_Prov = Telefono_Prov
        self.Direccion_Prov = Direccion_Prov

    
    def json(self):
        return {'id_Proveedor': self.id_Proveedor, 'Nombre_Prov': self.Nombre_Prov, 'Telefono_Prov': self.Telefono_Prov, 'Direccion_Prov': self.Direccion_Prov}


    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)



class Categoria(db.Model):
    id_Categoria = db.Column(db.Integer, primary_key= True)
    Nombre_Cat = db.Column(db.string(80))
    Descripcion_Cat = db.Column(db.string(150))

    def __int__(self, id_Categoria, Nombre_Cat, Descripcion_Cat):
        self.id_Categoria = id_Categoria
        self.Nombre_Cat = Nombre_Cat
        self.Descripcion_Cat = Descripcion_Cat

    
    def json(self):
        return {'id_Categoria': self.id_Categoria, 'Nombre_Cat': self.Nombre_Cat, 'Descripcion_Cat': self.Descripcion_Cat}

    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)


class Subcategoria(db.Model):
    id_subcategoria = db.Column(db.Integer, primary_key = True)
    Nombre_Sub = db.Column(db.string(80))
    Descripcion_Sub = db.Column(db.string(150))
    id_Categoria = db.Column(db.Integer, db.foreignKey("Categoria.id_Categoria"))

    def __int__(self, id_subcategoria, Nombre_Sub, Descripcion_Sub, id_Categoria):
        self.id_subcategoria = id_subcategoria
        self.Nombre_Sub = Nombre_Sub
        self.Descripcion_Sub = Descripcion_Sub
        self.id_Categoria = id_Categoria

    def json(self):
        return {'id_subcategoria': self.id_subcategoria,'Nombre_Sub': self.Nombre_Sub, 'Descripcion_Sub': self.Descripcion_Sub, 'Categoria': self.id_Categoria }

    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)


class Producto(db.Model):
    id_Producto = db.Column(db.Integer, primary_key= True)
    Nombre_Prod = db.Column(db.string(100))
    Medida_Prod = db.Column(db.Integer(7))
    Unidad_Medida_Prod = db.Column(db.string(30))
    Precio_Bruto_Prod = db.Column(db.numeric(19, 0))
    Iva_Prod = db.Column (db.float(3, 2))
    Porcentaje_Ganancia_Prod = db.Column(db.numeric(3, 2))
    Precio_Neto_Unidad_Prod = db.Column(db.numeric(19, 2))
    Unidades_Totales_Prod = db.Column(db.Integer)
    Marca_Prod = db.Column(db.string(50))
    Estado_Prod = db.Column(db.string(50))
    id_Proveedor = db.Column(db.Integer, db.foreignKey("Proveedor.id_Proveedor"))
    id_subcategoria = db.Column(db.Integer, db.foreignKey("Subcategoria.id_subcategoria"))


    def __int__(self, id_Producto, Nombre_Prod, Medida_Prod, Unidad_Medida_Prod, Precio_Bruto_Prod, Iva_Prod, Porcentaje_Ganancia_Prod, Precio_Neto_Unidad_Prod, Unidades_Totales_Prod, Marca_Prod, Estado_Prod, id_Proveedor, id_subcategoria):
        self.id_Producto = id_Producto
        self.Nombre_Prod = Nombre_Prod
        self.Medida_Prod = Medida_Prod
        self.Unidad_Medida_Prod = Unidad_Medida_Prod
        self.Precio_Bruto_Prod = Precio_Bruto_Prod
        self.Iva_Prod = Iva_Prod
        self.Porcentaje_Ganancia_Prod = Porcentaje_Ganancia_Prod
        self.Precio_Neto_Unidad_Prod = Precio_Neto_Unidad_Prod
        self.Unidades_Totales_Prod = Unidades_Totales_Prod
        self.Marca_Prod = Marca_Prod
        self.Estado_Prod = Estado_Prod
        self.id_Proveedor = id_Proveedor
        self.id_subcategoria = id_subcategoria

    def json(self):
        return {'id_Producto': self.id_Producto, 
        'Nombre_Prod': self.Nombre_Prod,
        'Medida_Prod': self.Medida_Prod,
        'Unidad_Medida_Prod': self.Unidad_Medida_Prod,
        'Precio_Bruto_Prod': self.Precio_Bruto_Prod, 
        'Iva_Prod': self.Iva_Prod,
        'Porcentaje_Ganancia_Prod': self.Porcentaje_Ganancia_Prod,
        'Precio_Neto_Unidad_Prod': self.Precio_Neto_Unidad_Prod,
        'Unidades_Totales_Prod':self.Unidades_Totales_Prod, 
        'Marca_Prod': self.Marca_Prod,
        'Estado_Prod': self.Estado_Prod,
        'id_Proveedor': self.id_Proveedor,
        'id_subcategoria': self.id_subcategoria}


    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)


class Fecha_Registro_Prod(db.Model):
    id_Fecha_Registro =db.Column(db.Integer, primary_key=True)
    Fecha_Registro = db.Column(db.DateTime)
    Cantidad = db.Column(db.Integer)
    id_Proveedor = db.Column(db.Integer, db.foreignKey("Proveedor.id_Proveedor"))
    id_Producto = db.Column(db.Integer, db.foreignKey("Producto.id_Producto"))

    def __int__(self, id_Fecha_Registro, Fecha_Registro, Cantidad, id_Proveedor, id_Producto):
        self.id_Fecha_Registro = id_Fecha_Registro   
        self.Fecha_Registro = Fecha_Registro
        self.Cantidad = Cantidad
        self.id_Proveedor = id_Proveedor
        self.Producto = Producto

    def json(self):
        return{'id_Fecha_Registro' : self.id_Fecha_Registro, 'Fecha_Registro' : self.Fecha_Registro, 'Cantidad': self.Cantidad, 'id_Proveedor': self.id_Proveedor, 'id_Producto': self.id_Producto}

    
    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)


class Rol(db.Model):
    id_Rol = db.Column(db.Integer, primary_key= True)
    Nombre_Rol = db.Column(db.string)

    def __int__(self, id_Rol, Nombre_Rol):
        self.id_Rol = id_Rol
        self.Nombre_Rol = Nombre_Rol

    def json(self):
        return{'id_Rol': self.id_Rol, 'Nombre_Rol': self.Nombre_Rol}

        
    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)


class Usuario(db.M):
    id_Usuario = db.Column(db.Integer, primary_key= True)
    Nombre_Usu = db.Column(db.string(70))
    Contraseña_Usu = db.Column(db.string(30))
    Email_Usu = db.Column(db.string(80))
    Telefono_Usu = db.Column(db.string(20))
    Cedula_Usu = db.Column(db.string(20))
    id_Rol = db.Column(db.Integer, db.foreignKey("Rol.id_Rol"))


    def __int__(self, id_Usuario, Nombre_Usu, Contraseña_Usu, Email_Usu, Telefono_Usu, Cedula_Usu, id_Rol):
        self.id_Usuario = id_Usuario
        self.Nombre_Usu = Nombre_Usu
        self.Contraseña_Usu = Contraseña_Usu
        self.Email_Usu = Email_Usu
        self.Telefono_Usu = Telefono_Usu
        self.Cedula_Usu = Cedula_Usu
        self.id_Rol    = id_Rol


    def json(self):
        return{'id_Usuario': self.Usuario, 'Nombre_Usu': self.Nombre_Usu, 'Contraseña_Usu': self.Contraseña_Usu, 'Email_Usu': self.Email_Usu, 'Telefono_Usu': self.Telefono_Usu, 'Cedula_Usu': self.Cedula_Usu, 'id_Rol': self.id_Rol}

    
    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)



class Factura(db.M):
    id_Factura = db.Column(db.Integer, primary_key= True)
    Impuestos_Fact = db.Column(db.numeric(5,2))
    Fecha_Generacion_Fact = db.Column(db.DateTime)

    def __int__(self, id_Factura, Impuestos_Fact, Fecha_Generacion_Fact):
        self.id_Factura = id_Factura
        self.Impuestos_Fact = Impuestos_Fact
        self.Fecha_Generacion_Fact = Fecha_Generacion_Fact

    def json(self):
        return{'id_Factura': self.id_Factura, 'Impuestos_Fact': self.Impuestos_Fact, 'Fecha_Generacion_Fact': self.Fecha_Generacion_Fact}
    
    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)
    

class Venta(db.M):
    id_venta = db.Column(db.Integer, primary_key= True)
    Fecha_Venta = db.Column(db.DateTime)
    Venta_Total = db.Column(db.numeric(19,0))
    Forma_Pago = db.Column(db.string(70))
    id_Usuario = db.Column(db.Integer, db.foreignKey("Usuario.id_Usuario"))


    def __int__(self, id_venta, Fecha_Venta, Venta_Total, Forma_Pago, id_Usuario):
        self.id_venta = id_venta    
        self.Fecha_Venta = Fecha_Venta
        self.Venta_Total = Venta_Total
        self.Forma_Pago = Forma_Pago
        self.id_Usuario = id_Usuario

    def json(self):
        return{'id_venta': self.id_venta, 'Fecha_Venta': self.Fecha_Venta, 'Venta_Total': self.Venta_Total, 'Forma_Pago': self.Forma_Pago, 'id_Usuario': self.id_Usuario}
    
    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)


class Detalle_Venta(db.M):
    id_Detalle_Venta = db.Column(db.Integer, primary_key= True)
    Cantidad =db.Column(db.Integer)
    id_venta = db.Column(db.Integer, db.foreignKey ("Venta.id_venta"))
    id_Producto = db.Column (db.Integer, db.foreignKey("Producto.id_Producto"))
    id_Factura = db.Column(db.Integer, db.foreignKey("Factura.id_Factura"))

    def __int__(self,id_Detalle_Venta, Cantidad, id_venta, id_Producto, id_Factura):
        self.id_Detalle_Venta = id_Detalle_Venta
        self.Cantidad= Cantidad
        self.id_venta = id_venta
        self.id_Producto = id_Producto
        self.id_Factura = id_Factura

    def json(self):
        return{'id_Detalle_Venta': self.id_Detalle_Venta, 'cantidad': self.cantidad, 'id_venta': self.id_venta, 'id_Producto': self.id_Producto, 'id_Factura': self.id_Factura}

    def __str__(self):
        return str(self.__class__) + ":" + str(self.__dict__)
    
