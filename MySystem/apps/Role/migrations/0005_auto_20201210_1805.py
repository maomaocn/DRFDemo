# Generated by Django 3.1.3 on 2020-12-10 18:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Role', '0004_auto_20201210_1656'),
    ]

    operations = [
        migrations.AlterField(
            model_name='role',
            name='permiss',
            field=models.ManyToManyField(blank=True, db_constraint=False, null=True, related_name='permiss', to='Role.PermissTion', verbose_name='角色权限'),
        ),
    ]
