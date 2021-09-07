from django.contrib import admin

from .models import Pregunta, ElegirRespuesta, PreguntasRespondidas, QuizUsuario

from .forms import ElegirInlineFormset

import json
from django.core.serializers.json import DjangoJSONEncoder
from django.db.models import Count, Avg
from django.db.models.functions import TruncDay

class ElegirRespuestaInline(admin.TabularInline):
	model = ElegirRespuesta
	can_delete =False
	max_num = ElegirRespuesta.MAXIMO_RESPUESTA
	min_num = ElegirRespuesta.MAXIMO_RESPUESTA
	formset = ElegirInlineFormset

class PreguntaAdmin(admin.ModelAdmin):
	model = Pregunta
	inlines = (ElegirRespuestaInline, )
	list_display = ['texto',]
	search_fields = ['texto', 'preguntas__texto']

admin.site.register(Pregunta, PreguntaAdmin)
admin.site.register(ElegirRespuesta)

@admin.register(PreguntasRespondidas)
class PreguntasRespondidasAdmin(admin.ModelAdmin):
    list_display=('pregunta', 'puntaje_obtenido')
    search_fields=('puntaje_obtenido',)
    list_per_page=25

@admin.register(QuizUsuario)
class QuizUsuarioAdmin(admin.ModelAdmin):
    list_display=('fecha', 'puntaje_total', 'usuario')
	#list_display=('time', 'score', 'reg_date', 'correct', 'wrong', 'percent')
    search_fields=('fecha',)
    list_per_page=25

    def changelist_view(self, request, extra_context=None):
        
        GData = (
            QuizUsuario.objects.annotate(date=TruncDay("fecha"))
            .values("date")
            .annotate(y=Count("id"))
            .order_by("-date")
        )

        PData = (
            QuizUsuario.objects.values("id")
            .annotate(date=TruncDay("fecha"))
            .values("date")
            .annotate(y=Avg("puntaje_total"))
            .order_by("-date")
        )

        # Serialize and attach the chart data to the template context
        game_as_json = json.dumps(list(GData), cls=DjangoJSONEncoder)
        points_as_json = json.dumps(list(PData), cls=DjangoJSONEncoder)
        extra_context = extra_context or {"GData": game_as_json, "PData": points_as_json}

        # Call the superclass changelist_view to render the page
        return super().changelist_view(request, extra_context=extra_context)