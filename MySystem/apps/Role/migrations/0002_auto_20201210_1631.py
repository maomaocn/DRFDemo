# Generated by Django 3.1.3 on 2020-12-10 16:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Role', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='PermissTion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('per_name', models.CharField(blank=True, max_length=128, null=True, unique=True, verbose_name='权限名称')),
                ('per_desc', models.CharField(blank=True, max_length=128, null=True, unique=True, verbose_name='权限描述')),
                ('is_per', models.BooleanField(default=False, verbose_name='是否有该权限')),
            ],
            options={
                'verbose_name': '权限管理',
                'verbose_name_plural': '权限管理',
                'db_table': 'permiss',
            },
        ),
        migrations.AddField(
            model_name='role',
            name='permiss',
            field=models.ManyToManyField(db_constraint=False, to='Role.PermissTion', verbose_name='角色权限'),
        ),
    ]
