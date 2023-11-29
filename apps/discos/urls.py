from django.urls import path

from .views import AgregarCategoria,AgregarDisco,ListarDiscos,ModificarDisco,EliminarDisco,DiscoDetalle


app_name='apps.discos'


urlpatterns = [
    path("agregar_categoria/", AgregarCategoria.as_view(), name='agregar_categoria'),
    path("agregar_disco/", AgregarDisco.as_view(), name='agregar_disco'),
    path("listar_discos/", ListarDiscos.as_view(), name='listar_discos'),
    path("modificar_disco/<int:pk>", ModificarDisco.as_view(), name='modificar_disco'),
    path("eliminar_disco/<int:pk>", EliminarDisco.as_view(), name='eliminar_disco'),
    path("detalle_disco/<int:pk>", DiscoDetalle.as_view(), name='detalle_disco'),    
]