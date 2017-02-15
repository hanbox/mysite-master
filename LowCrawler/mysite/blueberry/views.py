from django.shortcuts import render

# Create your views here.

#coding=utf-8
from django.shortcuts import render_to_response
from django.http import HttpResponse

# Create your views here.
def index_blueberry(request):
    return render_to_response('index_blueberry.html', {})