from django.contrib import admin
from apps.apps_pregunchaco.models import Preguntas
from apps.apps_pregunchaco.models import Nivel

# Register your models here.
class PreguntasAdmin(admin.ModelAdmin):
    list_display=('Id_Pregunta','Fk_Nivel','Pregunta','Respuesta1','Respuesta2','Respuesta3','Respuesta4','RespuestaCorrecta')
    search_fields=('Id_Pregunta','Fk_Nivel','Pregunta','Respuesta1','Respuesta2','Respuesta3','Respuesta4','RespuestaCorrecta')
    list_per_page =25

admin.site.register(Preguntas,PreguntasAdmin)

class NivelAdmin(admin.ModelAdmin):
    list_display=('Id_Nivel','nombre')
    search_fields=('Id_Nivel','nombre')
    list_per_page =25

admin.site.register(Nivel,NivelAdmin)