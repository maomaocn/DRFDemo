from rest_framework import serializers

from Article.models import Article


class ArticleIndexSerializer(serializers.ModelSerializer):

    class Meta:
        model = Article
        fields = '__all__'
        depth = 3
