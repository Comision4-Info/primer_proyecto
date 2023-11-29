from django.shortcuts import render
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.views.generic import ListView, DetailView
from django.urls import reverse_lazy

from .models import Categoria, Discos


# Create your views here.

class AgregarCategoria(CreateView):
    model = Categoria
    fields = ['nombre']
    template_name = 'discos/agregar_categoria.html'
    success_url = reverse_lazy('inicio')

class AgregarDisco(CreateView):
    model = Discos
    fields = ['titulo', 'autor', 'letra', 'imagen', 'categoria']
    template_name = 'discos/agregar_disco.html'
    success_url = reverse_lazy('inicio')

    def form_valid(self,form):
        form.instance.colaborador = self.request.user
        return super().form_valid(form)
    
class ModificarDisco(UpdateView):
    model = Discos
    fields = ['titulo', 'autor', 'letra', 'imagen', 'categoria']
    template_name = 'discos/agregar_disco.html'
    success_url = reverse_lazy('inicio')

class ListarDiscos(ListView):
    model = Discos
    template_name = 'discos/listar_discos.html'
    context_object_name = 'discos'

class EliminarDisco(DeleteView):
    model = Discos
    template_name = 'discos/confirma_eliminar.html'
    success_url = reverse_lazy('inicio')

class DiscoDetalle(DetailView):
    model = Discos
    template_name = 'discos/disco_detalle.html'
    context_object_name = 'disco'
