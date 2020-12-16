from django.contrib.auth.models import AbstractUser
from django.db import models


# Create your models here.
from Role.models import Role
from db_tools.BaseModel import BaseModel


class JHUser(AbstractUser,BaseModel):
    username = models.CharField(max_length=128, null=True, blank=True, unique=True,verbose_name='登陆用户名')
    real_username = models.CharField(max_length=128, null=True, blank=True,verbose_name='真实姓名')
    password = models.CharField(max_length=128, null=True, blank=True, verbose_name='密码')
    gender = models.CharField(max_length=4, null=True, blank=True, verbose_name='性别')
    age = models.IntegerField(null=True, blank=True, verbose_name='年龄')
    custr_nbr=models.CharField(max_length=18,null=True,blank=True,verbose_name='身份证号码')
    phone=models.CharField(max_length=16,null=True,blank=True,verbose_name='手机号码')
    role=models.ForeignKey(Role,related_name='role_id',null=True,blank=True,on_delete=models.SET_NULL,db_constraint=False)


    class Meta:
        db_table='jh_user'
        verbose_name='用户管理'
        verbose_name_plural=verbose_name


