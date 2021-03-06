# Generated by Django 3.1.3 on 2020-12-10 15:17

import django.contrib.auth.models
from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='JHUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('creator_name', models.CharField(blank=True, max_length=128, null=True, verbose_name='创建者用户名')),
                ('creator_date', models.DateTimeField(blank=True, default=django.utils.timezone.now, null=True, verbose_name='创建时间')),
                ('is_delete', models.NullBooleanField(verbose_name='是否删除')),
                ('del_user', models.CharField(blank=True, max_length=128, null=True, verbose_name='删除用户名')),
                ('del_date', models.DateTimeField(blank=True, default=django.utils.timezone.now, null=True, verbose_name='删除时间')),
                ('username', models.CharField(blank=True, max_length=128, null=True, unique=True, verbose_name='登陆用户名')),
                ('real_username', models.CharField(blank=True, max_length=128, null=True, unique=True, verbose_name='真实姓名')),
                ('password', models.CharField(blank=True, max_length=128, null=True, verbose_name='密码')),
                ('gender', models.CharField(blank=True, max_length=4, null=True, verbose_name='性别')),
                ('age', models.IntegerField(blank=True, null=True, verbose_name='年龄')),
                ('custr_nbr', models.CharField(blank=True, max_length=18, null=True, verbose_name='身份证号码')),
                ('phone', models.CharField(blank=True, max_length=16, null=True, verbose_name='手机号码')),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': '用户管理',
                'verbose_name_plural': '用户管理',
                'db_table': 'jh_user',
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
    ]
