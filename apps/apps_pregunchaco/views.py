from django.shortcuts import render
from django.http import HttpResponse
import datetime
# Create your views here.
def index(request):
    texto={'mensaje_texto':'Este es mi primer mensaje :)'}
    return render(request, 'index.html',texto)


