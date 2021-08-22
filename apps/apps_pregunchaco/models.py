from django.db import models
from django.utils import timezone

# Create your models here.
class Usuario(models.Model):
    Id_usuario =models.BigAutoField(primary_key=True)
    nombre=models.CharField(max_length=100, help_text="Nombre de usuario")
    correo=models.CharField(max_length=200, help_text="e-mail")
    password=models.CharField(max_length=100, help_text="Contraseña")

class Nivel(models.Model):
    Id_Nivel = models.BigAutoField(primary_key=True)
    nombre	=models.CharField(max_length=100, help_text="Nombre del Nivel")

class Preguntas(models.Model):
    Id_Pregunta =models.BigAutoField(primary_key=True)
    Fk_Nivel	=models.ForeignKey(Nivel, on_delete=models.CASCADE)
    Pregunta	=models.CharField(max_length=100, help_text="Pregunta")
    Respuesta1	=models.CharField(max_length=100, help_text="Respuesta 1")
    Respuesta2	=models.CharField(max_length=100, help_text="Respuesta 2")
    Respuesta3	=models.CharField(max_length=100, help_text="Respuesta 3")
    Respuesta4  =models.CharField(max_length=100, help_text="Respuesta 4")
    RespuestaCorrecta=models.CharField(max_length=100, help_text="Pregunta")

class TablaPuntuacion(models.Model):
    day  = timezone.now()
    hour = timezone.now()
    formatedHour = hour.strftime("%Y/%m/%d %H:%M:%S")
    Id_tablapuntuacion =models.BigAutoField(primary_key=True)
    fechaHora= models.CharField(max_length=50, default=formatedHour)
    fk_usuario=models.ForeignKey(Usuario, on_delete=models.CASCADE)
    puntuacion = models.IntegerField()
    

