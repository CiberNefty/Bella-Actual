from marshmallow import fields
from flask_sqlalchemy import SQLAlchemy
import enum
from marshmallow_sqlalchemy import SQLAlchemyAutoSchema

db= SQLAlchemy()

class Proveedor(db.Model):
    id_Proveedor = db.Column(db.Integer, primary_key = True)
    Nombre_Prov = db.Column(db.String(100))
    Telefono_Prov = db.Column(db.String(50))
    Direccion_Prov = db.Column(db.String(30))

class Categoria(db.Model):
    id_Categoria = db.Column(db.Integer, primary_key= True)
    Nombre_Cat = db.Column(db.String(80))
    Descripcion_Cat = db.Column(db.String(150))


class Subcategoria(db.Model):
    id_subcategoria = db.Column(db.Integer, primary_key = True)
    Nombre_Sub = db.Column(db.String(80))
    Descripcion_Sub = db.Column(db.String(150))
    id_Categoria = db.Column(db.Integer, db.ForeignKey("categoria.id_Categoria"))


class Producto(db.Model):
    id_Producto = db.Column(db.Integer, primary_key= True)
    Nombre_Prod = db.Column(db.String(100))
    Medida_Prod = db.Column(db.Integer)
    Unidad_Medida_Prod = db.Column(db.String(30))
    Precio_Bruto_Prod = db.Column(db.Integer)
    Iva_Prod = db.Column (db.Numeric(3, 2))
    Porcentaje_Ganancia_Prod = db.Column(db.Numeric(3, 2))
    Precio_Neto_Unidad_Prod = db.Column(db.Numeric(19, 2))
    Unidades_Totales_Prod = db.Column(db.Integer)
    Marca_Prod = db.Column(db.String(50))
    Estado_Prod = db.Column(db.String(50))
    id_Proveedor = db.Column(db.Integer, db.ForeignKey("proveedor.id_Proveedor"))
    id_subcategoria = db.Column(db.Integer, db.ForeignKey("subcategoria.id_subcategoria"))


class Fecha_Registro_Prod(db.Model):
    id_Fecha_Registro =db.Column(db.Integer, primary_key=True)
    Fecha_Registro = db.Column(db.DateTime)
    Cantidad = db.Column(db.Integer)
    id_Proveedor = db.Column(db.Integer, db.ForeignKey("proveedor.id_Proveedor"))
    id_Producto = db.Column(db.Integer, db.ForeignKey("producto.id_Producto"))

class Rol(db.Model):
    id_Rol = db.Column(db.Integer, primary_key= True)
    Nombre_Rol = db.Column(db.String)




class Usuario(db.Model):
    id_Usuario = db.Column(db.Integer, primary_key= True)
    Nombre_Usu = db.Column(db.String(70))
    Contraseña_Usu = db.Column(db.String(30))
    Email_Usu = db.Column(db.String(80))
    Telefono_Usu = db.Column(db.String(20))
    Cedula_Usu = db.Column(db.String(20))
    id_Rol = db.Column(db.Integer, db.ForeignKey("rol.id_Rol"))





class Factura(db.Model):
    id_Factura = db.Column(db.Integer, primary_key= True)
    Impuestos_Fact = db.Column(db.Numeric(5,2))
    Fecha_Generacion_Fact = db.Column(db.DateTime)



class Venta(db.Model):
    id_venta = db.Column(db.Integer, primary_key= True)
    Fecha_Venta = db.Column(db.DateTime)
    Venta_Total = db.Column(db.Numeric(19,0))
    Forma_Pago = db.Column(db.String(70))
    id_Usuario = db.Column(db.Integer, db.ForeignKey("usuario.id_Usuario"))




class Detalle_Venta(db.Model):
    id_Detalle_Venta = db.Column(db.Integer, primary_key= True)
    Cantidad =db.Column(db.Integer)
    id_venta = db.Column(db.Integer, db.ForeignKey ("venta.id_venta"))
    id_Producto = db.Column (db.Integer, db.ForeignKey("producto.id_Producto"))
    id_Factura = db.Column(db.Integer, db.ForeignKey("factura.id_Factura"))



#serializacion

class ProveedorSchema(SQLAlchemyAutoSchema):
        class Meta:
            Model = Proveedor
            include_relationships = True
            load_instance = True


class CategoriaSchema(SQLAlchemyAutoSchema):       
    class Meta:
        Model = Categoria
        include_relationships = True
        load_instance = True


class SubcategoriaSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Subcategoria
        include_relationships = True
        load_instance = True


class ProductoSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Producto
        include_relationships = True
        load_instance = True


class Fecha_Registro_ProdSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Fecha_Registro_Prod
        include_relationships = True
        load_instance = True

class RolSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Rol
        include_relationships = True
        load_instance = True


class UsuarioSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Usuario
        include_relationships = True
        load_instance = True


class FacturaSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Factura
        include_relationships = True
        load_instance = True


class VentaSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Venta
        include_relationships = True
        load_instance = True


class Detalle_VentaSchema(SQLAlchemyAutoSchema):
    class Meta:
        Model = Detalle_Venta
        include_relationships = True
        load_instance = True    