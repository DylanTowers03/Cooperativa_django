from django.urls import path
from Apps.codeudor.views import home

urlpatterns = [
    path('', home, name= 'home'),
]