# Generated by Django 3.1.3 on 2020-12-10 15:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Role', '0001_initial'),
        ('users', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='jhuser',
            name='role',
            field=models.OneToOneField(null=True, on_delete=django.db.models.deletion.SET_NULL, to='Role.role'),
        ),
    ]
