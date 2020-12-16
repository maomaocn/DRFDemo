from django.db import models

# Create your models here.

class Article(models.Model):
    title=models.CharField(max_length=128, null=True, blank=True,verbose_name='文章名称')
    content=models.TextField(null=True,blank=True,verbose_name='文章内容')
    is_delete = models.BooleanField(default=False,verbose_name='是否删除')

    class Meta:
        db_table='article'
        verbose_name='文章管理'
        verbose_name_plural=verbose_name