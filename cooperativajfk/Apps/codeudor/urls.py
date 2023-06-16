""" from django.urls import path, include
from rest_framework import routers
from .views import CodeudorList

router= routers.DefaultRouter()
router.register(r'',CodeudorList, 'codeudorList')
urlpatterns = [
    path("", include(router.urls))
] """

from django.urls import path
from .views import CodeudorList, CodeudorDetail

app_name = "codeudor"
urlpatterns = [
    path('', CodeudorList.as_view()),
    path('<int:pk>', CodeudorDetail.as_view()),
]