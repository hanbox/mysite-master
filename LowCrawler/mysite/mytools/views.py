from django.shortcuts import render

# Create your views here.

#coding=utf-8
from django.shortcuts import render_to_response
from django.http import HttpResponse
from mytools.models import tools_site

# Create your views here.
def index_mytools(request):
    contact_list = tools_site.objects.all()
    return render_to_response('tools.html', {"tools_site":contact_list,})
