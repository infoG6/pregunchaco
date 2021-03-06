# Generated by Django 3.2.6 on 2021-08-22 02:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Nivel',
            fields=[
                ('Id_Nivel', models.BigAutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(help_text='Nombre del Nivel', max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Usuario',
            fields=[
                ('Id_usuario', models.BigAutoField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(help_text='Nombre de usuario', max_length=100)),
                ('correo', models.CharField(help_text='e-mail', max_length=200)),
                ('password', models.CharField(help_text='Contraseña', max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='TablaPuntuacion',
            fields=[
                ('Id_tablapuntuacion', models.BigAutoField(primary_key=True, serialize=False)),
                ('fechaHora', models.CharField(default='2021/08/22 02:03:57', max_length=50)),
                ('puntuacion', models.IntegerField()),
                ('fk_usuario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='apps_pregunchaco.usuario')),
            ],
        ),
        migrations.CreateModel(
            name='Preguntas',
            fields=[
                ('Id_Pregunta', models.BigAutoField(primary_key=True, serialize=False)),
                ('Pregunta', models.CharField(help_text='Pregunta', max_length=100)),
                ('Respuesta1', models.CharField(help_text='Respuesta 1', max_length=100)),
                ('Respuesta2', models.CharField(help_text='Respuesta 2', max_length=100)),
                ('Respuesta3', models.CharField(help_text='Respuesta 3', max_length=100)),
                ('Respuesta4', models.CharField(help_text='Respuesta 4', max_length=100)),
                ('RespuestaCorrecta', models.CharField(help_text='Pregunta', max_length=100)),
                ('Fk_Nivel', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='apps_pregunchaco.nivel')),
            ],
        ),
    ]
