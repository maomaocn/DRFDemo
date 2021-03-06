# Generated by Django 3.1.3 on 2020-12-10 15:26

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Role',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('role_name', models.CharField(blank=True, max_length=128, null=True, unique=True, verbose_name='角色名称')),
                ('role_desc', models.CharField(blank=True, max_length=128, null=True, unique=True, verbose_name='角色描述')),
            ],
            options={
                'verbose_name': '角色管理',
                'verbose_name_plural': '角色管理',
                'db_table': 'role',
            },
        ),
    ]
