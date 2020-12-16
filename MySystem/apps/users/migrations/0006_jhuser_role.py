# Generated by Django 3.1.3 on 2020-12-10 16:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Role', '0001_initial'),
        ('users', '0005_remove_jhuser_role'),
    ]

    operations = [
        migrations.AddField(
            model_name='jhuser',
            name='role',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='role_id', to='Role.role'),
        ),
    ]