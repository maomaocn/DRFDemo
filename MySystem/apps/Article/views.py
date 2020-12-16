from django.shortcuts import render

# Create your views here.
from rest_framework.generics import ListAPIView
from Article.models import Article
from Article.serializers import ArticleIndexSerializer
from db_tools.common import UserPermiss
from db_tools.pagination import MyPagination


class ArticleIndex(UserPermiss, ListAPIView):
    queryset = Article.objects.all().order_by('-id')
    serializer_class = ArticleIndexSerializer
    pagination_class = MyPagination
