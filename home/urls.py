from django.urls import path
from . import views

urlpatterns = [
    path('', views.paginaInicial, name='home')
]