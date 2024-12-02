from flaskr import create_app
from flaskr.modelos.modelos import Proveedor, Categoria, Subcategoria, Producto, Fecha_Registro_Prod, Rol, Usuario, Factura, Venta, Detalle_Venta
from .modelos import db

app= create_app('default')
app_context = app.app_context()
app_context.push()
db.init_app(app)
db.create_all()

#cd flaskr
#flask run 