from django.db import models
from django.contrib import admin

# Create your models here.
class Detial(models.Model):
    web_url = models.CharField(max_length = 200)
    movie_name = models.CharField(max_length = 200)
    movie_date = models.CharField(max_length = 200)
    movie_url = models.CharField(max_length = 2560)
    image_paths = models.CharField(max_length = 200)

admin.site.register(Detial)


def __unicode__(self):
    return self.movie_name
