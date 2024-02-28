from django.shortcuts import render
from django.http import HttpResponse


# Create your views here.




def hello_world(request):
    return HttpResponse("Hello, World!")


def come_back(request):
    return HttpResponse("Come Back")

def index(request):

    return render(request, 'html/index.html')


def second(request):
    page_title = "Rich Guitars"
    return render(request, 'html/second.html', {'page_title': page_title})