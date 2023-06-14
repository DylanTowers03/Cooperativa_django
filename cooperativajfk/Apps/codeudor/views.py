from django.shortcuts import render
from django.http import Http404

from rest_framework.response import Response
from rest_framework import generics, viewsets

from rest_framework import status

from .models import Codeudor
from .serializer import CodeudorSerializer

# Create your views here.


class CodeudorList(viewsets.ModelViewSet):
    """
    Lista de Clientes
    """

    serializer_class = CodeudorSerializer
    queryset = Codeudor.objects.all()