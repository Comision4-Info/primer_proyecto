from django.urls import path
from .views import *


app_name='apps.usuarios'


urlpatterns = [
    path("registrar/", RegitrarUsuario.as_view(), name='registrar'),
]
