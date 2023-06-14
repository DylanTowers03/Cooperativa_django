from django.urls import path, include
from rest_framework import routers
from .views import CodeudorList

router= routers.DefaultRouter()
router.register(r'codeudorlist',CodeudorList, 'codeudorList')
urlpatterns = [
    path("", include(router.urls))
]