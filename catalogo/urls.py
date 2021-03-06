from django.urls import path
from . import views

urlpatterns = [
    path('series/', views.paginaSeries, name='series'),
    path('series/genero', views.paginaSerieGenero, name='serie-genero'),
    path('series/ano', views.paginaSerieAno, name='serie-ano'),
    path('series/diretor', views.paginaSerieDiretor, name='serie-diretor'),
    path('serie-detalhe/<int:id>/', views.paginaDescricaoSerie, name='serie-detalhe'),
    path('filmes/', views.paginaFilmes, name='filmes'),
    path('filmes/genero/', views.paginaFilmeGenero, name='filme-genero'),
    path('filmes/ano/', views.paginaFilmeAno, name='filme-ano'),
    path('filmes/diretor/', views.paginaFilmeDiretor, name='filme-diretor'),
    path('filme-descricao/', views.paginaMidiaDescricao, name='filme-descricao'),
    path('filme-detalhe/<int:id>/', views.paginaDescricaoFilme, name='filme-detalhe'),
    path('favoritos/', views.paginaFavoritos, name='favoritos'),
    path('delete_filme/<int:id>', views.favoritosDeleteFilme, name='delete_filme'),
    path('delete_serie/<int:id>', views.favoritosDeleteSerie, name='delete_serie'),
]