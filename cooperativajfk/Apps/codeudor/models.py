from django.db import models

# Create your models here.

class Codeudor(models.Model):
    cedula= models.SmallIntegerField( max_length=10)
    nombreCodeudor = models.CharField(max_length=60, help_text="Ingrese el Nombre del Codeudor")
    apellidoCodeudor = models.CharField(max_length=60, help_text="Ingrese el Apellido del Codeudor")
    ciudadCodeudor = models.CharField(max_length=100, help_text="Ingrese la ciudad donde reside")
    telefonoCodeudor = models.CharField(max_length=12, help_text="Ingrese el Telefono del Codeudor")
    direccionCodeudor = models.CharField(max_length=100, help_text="Ingrese la Direccion del Codeudor")
    correoCodeudor = models.EmailField(max_length=100, help_text="Ingrese el Correo del Codeudor")
    PosibleSocio = models.BooleanField(help_text="Ingrese el Correo del Codeudor")
  

    def __str__(self):
        return self.nombreCodeudor

    class Meta:
        verbose_name = "Codeudor"
        verbose_name_plural = "Codeudor"