from django.db import models


# Create your models here.


class Role(models.Model):
    role_name = models.CharField(max_length=128, null=True, blank=True,  verbose_name='角色名称')
    role_desc = models.CharField(max_length=128, null=True, blank=True,  verbose_name='角色描述')
    permiss = models.ManyToManyField(to='PermissTion', db_constraint=False,verbose_name='角色权限',null=True,blank=True,related_name = "permiss")
    class Meta:
        db_table = 'role'
        verbose_name = '角色管理'
        verbose_name_plural = verbose_name


class PermissTion(models.Model):
    per_name = models.CharField(max_length=128, null=True, blank=True,  verbose_name='权限名称')
    per_desc = models.CharField(max_length=128, null=True, blank=True,  verbose_name='权限描述')
    is_per=models.BooleanField(default=False,verbose_name='是否有该权限')
    path_mode=models.CharField(max_length=128,null=True,blank=True,verbose_name='隶属模块')
    flag=models.CharField(max_length=20,null=True,blank=True,verbose_name='标志位')

    class Meta:
        db_table = 'permiss'
        verbose_name = '权限管理'
        verbose_name_plural = verbose_name
