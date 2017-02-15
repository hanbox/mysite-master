from django.db import models
from django.contrib import admin

# Create your models here.
class tools_site(models.Model):
    web_url = models.CharField(max_length = 200)
    site_info = models.CharField(max_length = 200)
    site_title = models.CharField(max_length = 200)
    site_type = models.CharField(max_length = 2560)
    image_paths = models.CharField(max_length = 200)

admin.site.register(tools_site)


def __unicode__(self):
    return self.movie_name
