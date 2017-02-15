from django.db import models
from django.contrib import admin

# Create your models here.
class main_demoinfo(models.Model):
    title = models.CharField(max_length = 20)
    description = models.CharField(max_length = 100)
    Feature_A_title = models.CharField(max_length = 20)
    Feature_A_data = models.CharField(max_length = 100)
    Feature_B_title = models.CharField(max_length = 20)
    Feature_B_data = models.CharField(max_length = 100)
    Feature_C_title = models.CharField(max_length = 20)
    Feature_C_data = models.CharField(max_length = 100)
    image_paths = models.CharField(max_length = 200)

class main_demo_pic(models.Model):
    title = models.CharField(max_length = 20)
    pic_num = models.CharField(max_length=1)
    pic_A_title = models.CharField(max_length = 10)
    pic_A_imgpath = models.CharField(max_length=100)
    pic_B_title = models.CharField(max_length = 10)
    pic_B_imgpath = models.CharField(max_length=100)

admin.site.register(main_demoinfo)
admin.site.register(main_demo_pic)

