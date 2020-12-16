from django.shortcuts import render

# Create your views here.
from rest_framework.generics import ListAPIView
from db_tools.common import UserPermiss
from db_tools.pagination import MyPagination
from users.models import JHUser
from users.serializers import JHUserSerializer


class JHUserIndexView(UserPermiss, ListAPIView):
    queryset = JHUser.objects.all().order_by('-id')
    serializer_class = JHUserSerializer
    pagination_class = MyPagination
