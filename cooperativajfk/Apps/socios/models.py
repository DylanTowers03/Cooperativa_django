from django.db import models

# Create your models here.
class Empresa(models.Model):
    nombreEmpresa = models.CharField(max_length=50, verbose_name="Nombre de la empresa")

    def __str__(self):
        return self.nombreEmpresa

    class Meta:
        verbose_name = "Nombre empresa"
        verbose_name_plural = "Nombres de empresas"


class Socios(models.Model):
    nombreSocio = models.CharField(max_length=60, verbose_name="Nombre del socio")
    cedula=models.PositiveIntegerField(max_length=10)
    apellidoSocio = models.CharField(max_length=60, help_text="Ingrese el Apellido del Socio")
    ciudadSocio = models.CharField(max_length=100, help_text="Ingrese la ciudad donde reside")
    telefonoSocio = models.CharField(max_length=12, help_text="Ingrese el Telefono del Socio")
    direccionSocio = models.CharField(max_length=100, help_text="Ingrese la Direccion del Socio")
    correoSocio = models.EmailField(max_length=100, help_text="Ingrese el Correo del Socio")
    empresa = models.ForeignKey(Empresa,
                                    null=True,
                                    blank=True,
                                    on_delete=models.CASCADE)

    def __str__(self):
        return self.nombreSocio

    class Meta:
        verbose_name = "socio"
        verbose_name_plural = " socios"