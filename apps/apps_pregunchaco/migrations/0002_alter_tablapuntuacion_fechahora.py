# Generated by Django 3.2.6 on 2021-08-22 02:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apps_pregunchaco', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='tablapuntuacion',
            name='fechaHora',
            field=models.CharField(default='2021/08/22 02:09:13', max_length=50),
        ),
    ]
