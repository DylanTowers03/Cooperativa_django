from django.contrib import admin
from .models import Empresa, Socios
# Register your models here.
class SociosAdmin(admin.ModelAdmin):
    pass

admin.site.register(Empresa)
admin.site.register(Socios, SociosAdmin)