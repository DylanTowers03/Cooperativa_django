from django.contrib import admin
from .models import Codeudor
# Register your models here.

class CodeudorAdmin(admin.ModelAdmin):
    pass


admin.site.register(Codeudor, CodeudorAdmin)