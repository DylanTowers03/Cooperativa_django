""" from django.shortcuts import render
from django.http import Http404

from rest_framework.response import Response
from rest_framework import generics, viewsets

from rest_framework import status

from .models import Codeudor
from .serializer import CodeudorSerializer

# Create your views here.


class CodeudorList(viewsets.ModelViewSet):

    serializer_class = CodeudorSerializer
    queryset = Codeudor.objects.all() """

from django.shortcuts import render
from django.http import Http404
from django.http import JsonResponse

from rest_framework.response import Response
from rest_framework.views import APIView

from rest_framework import status

from .models import Codeudor
from .serializer import CodeudorSerializer

# Create your views here.


class CodeudorList(APIView):
    """
    Lista de Clientes
    """

    def get(self, request, format=None):
        codeudor = Codeudor.objects.all()
        # data = {"results": list(codeudors.values("nombreCodeudor", "direccionCodeudor", "telefonoCodeudor", "correoCodeudor", "passwordCodeudor"))}
        # print(data)
        # return JsonResponse(data)
        serializer = CodeudorSerializer(codeudor, many=True)
        return Response({"codeudor":serializer.data})

    def post(self, request, format=None):
        serializer = CodeudorSerializer(data=request.data)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data,
                            status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class CodeudorDetail(APIView):
    """
    Retrieve, update or delete de los codeudors por pk
    """
    def get_object(self, pk):
        # Returns an object instance that should 
        # be used for detail views.
        try:
            return Codeudor.objects.get(pk=pk)
        except Codeudor.DoesNotExist:
            raise Http404

    def get(self, request, pk, format=None):
        codeudor = self.get_object(pk)
        serializer = CodeudorSerializer(codeudor)
        return Response({"codeudor":serializer.data})

    def put(self, request, pk, format=None):
        codeudor = self.get_object(pk)
        serializer = CodeudorSerializer(codeudor, data=request.data)  
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

    def patch(self, request, pk, format=None):
        codeudor = self.get_object(pk)
        serializer = CodeudorSerializer(codeudor,
                                           data=request.data,
                                           partial=True)
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


    def delete(self, request, pk, format=None):
        codeudor = self.get_object(pk)
        codeudor.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
