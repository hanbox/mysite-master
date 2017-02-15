from django.shortcuts import render

# Create your views here.

#coding=utf-8
from django.shortcuts import render_to_response
from django.http import HttpResponse
from main.models import main_demoinfo
from main.models import main_demo_pic

# Create your views here.
def index_main(request):
    demoinfo_list = main_demoinfo.objects.all()
    demopic_list = main_demo_pic.objects.all()
    return render_to_response('index.html', {"list_demo":demoinfo_list, "list_demo_pic":demopic_list })
