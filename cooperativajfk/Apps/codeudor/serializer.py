from dataclasses import field
from statistics import mode

from rest_framework import serializers
from .models import Codeudor

class CodeudorSerializer(serializers.ModelSerializer):
    # len_nombreCliente = serializers.SerializerMethodField()
    class Meta:
        model = Codeudor
        fields = "__all__"
        # exclude = ['passwordCliente']
        # fields = (
        #     'pk',
        #     'nombreCliente',
        #     'direccionCliente',
        #     'telefonoCliente',
        #     'correoCliente',
        #     'passwordCliente',
        # )

    # def get_len_nombreCliente(self, object):
    #     length = len(object.nombreCliente)
    #     return length

    # def validate(self, data):
    #     if data['nombreCliente'] == data['direccionCliente']:
    #         raise serializers.ValidationError('Nombre y Correo No pueden ser iguales')
    #     else:
    #         return data
