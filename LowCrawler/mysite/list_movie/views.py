from django.shortcuts import render

# Create your views here.

#coding=utf-8
from list_movie.models import Detial
from django.shortcuts import render_to_response
from django.http import HttpResponse
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

# Create your views here.
def index_listmovie(request):
    contact_list = Detial.objects.all()
    paginator = Paginator(contact_list, 10) # Show 25 contacts per page

    page = request.GET.get('page')
    try:
        contacts = paginator.page(page)
    except PageNotAnInteger:
        # If page is not an integer, deliver first page.
        contacts = paginator.page(1)
    except EmptyPage:
        # If page is out of range (e.g. 9999), deliver last page of results.
        contacts = paginator.page(paginator.num_pages)

    return render_to_response('list_movie.html', {"movie_list": contacts})
