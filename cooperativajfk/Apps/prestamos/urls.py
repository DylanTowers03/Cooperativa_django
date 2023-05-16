from django.urls import path
from Apps.prestamos.views import home

urlpatterns = [
    path('', home, name= 'home'),
]