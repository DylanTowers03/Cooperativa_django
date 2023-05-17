from django.db import models
from Apps.socios.models import Socios
from Apps.codeudor.models import Codeudor

# Create your models here.

class Modalidad(models.Model):
   pTiempoEstipulado=models.SmallIntegerField(("Periosde de tiempo estipulado"))
   tasaInteres=models.PositiveIntegerField(max_length=2)

class Prestamos(models.Model):
    fechaInicio = models.DateField(auto_now=False, auto_now_add=False)
    valorPrestamo = models.FloatField(("Valor prestamo"))
    cuotaMensual = models.PositiveSmallIntegerField(("Cuotas mensuales"))
    plazoMeses =models.PositiveSmallIntegerField(("Plazo mensuales"))
    socios = models.ForeignKey(Socios,
                                    null=True,
                                    blank=True,
                                    on_delete=models.CASCADE)
    codeudor=models.ForeignKey(Codeudor, verbose_name=("Codeudor"), on_delete=models.CASCADE)
    modalidad=models.ForeignKey(Modalidad, verbose_name=("Modalidad de pago"), on_delete=models.CASCADE)
    

    class Meta:
        verbose_name = "venta producto"
        verbose_name_plural = "Ventas Productos"

