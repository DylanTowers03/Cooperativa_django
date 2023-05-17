from django.contrib import admin
from .models import Modalidad, Prestamos

class PrestamosAdmin(admin.ModelAdmin):
    pass

admin.site.register(Prestamos, PrestamosAdmin)
admin.site.register(Modalidad)