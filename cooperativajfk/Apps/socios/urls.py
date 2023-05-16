from django.urls import path
from Apps.socios.views import home

urlpatterns = [
    path('', home, name= 'home'),
]