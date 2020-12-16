from django.db import models
from django.utils import timezone



class BaseModel(models.Model):
    creator_name = models.CharField(max_length=128, null=True, blank=True, verbose_name='创建者用户名')
    creator_date = models.DateTimeField(default=timezone.now, null=True, blank=True, verbose_name='创建时间')
    is_delete=models.NullBooleanField(verbose_name='是否删除')
    del_user= models.CharField(max_length=128, null=True, blank=True, verbose_name='删除用户名')
    del_date = models.DateTimeField(null=True, blank=True, verbose_name='删除时间')

    class Meta:
        abstract = True


