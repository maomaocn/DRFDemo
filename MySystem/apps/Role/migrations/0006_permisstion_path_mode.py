# Generated by Django 3.1.3 on 2020-12-11 16:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Role', '0005_auto_20201210_1805'),
    ]

    operations = [
        migrations.AddField(
            model_name='permisstion',
            name='path_mode',
            field=models.CharField(blank=True, max_length=128, null=True, verbose_name='隶属模块'),
        ),
    ]
