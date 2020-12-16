from django.urls import path
from rest_framework import routers

from Article import views

router=routers.DefaultRouter()

urlpatterns=[
    # path("article/",views.ArticleIndex.as_view({'get':"Read",'put':"Update",'post':"Add",'delete':"Del",})), #自动注册路由
    path("article/",views.ArticleIndex.as_view(),) #自动注册路由

]