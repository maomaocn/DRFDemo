# Generated by Django 3.1.3 on 2020-12-10 16:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Role', '0001_initial'),
        ('users', '0008_auto_20201210_1611'),
    ]

    operations = [
        migrations.AlterField(
            model_name='jhuser',
            name='role',
            field=models.ForeignKey(blank=True, db_constraint=False, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='role_id', to='Role.role'),
        ),
    ]
