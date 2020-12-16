from django.urls import path, include
from rest_framework import routers

from users import views
from users.views import JHUserIndexView

# router=routers.DefaultRouter()

# router.register('user',JHUserIndexView)
urlpatterns=[
    # path("",include(router.urls)), #自动注册路由


    path('user/',views.JHUserIndexView.as_view())
]