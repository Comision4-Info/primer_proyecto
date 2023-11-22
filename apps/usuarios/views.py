from django.shortcuts import render
from django.urls import reverse_lazy
from django.views.generic import CreateView

from .models import Usuarios
from .forms import RegitrarUsuariosForm

# Create your views here.
class RegitrarUsuario(CreateView):
    model = Usuarios
    form_class = RegitrarUsuariosForm
    template_name = 'usuarios/registrar_usuarios.html'
    success_url = reverse_lazy('inicio')