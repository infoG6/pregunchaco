# Generated by Django 3.2.6 on 2021-09-02 01:45

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('apps_pregunchaco', '0004_auto_20210901_2239'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='quizusuario',
            name='fecha',
        ),
    ]
