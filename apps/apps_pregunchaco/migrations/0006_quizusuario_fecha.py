# Generated by Django 3.2.6 on 2021-09-02 01:47

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('apps_pregunchaco', '0005_remove_quizusuario_fecha'),
    ]

    operations = [
        migrations.AddField(
            model_name='quizusuario',
            name='fecha',
            field=models.DateTimeField(default=datetime.datetime.now),
        ),
    ]
