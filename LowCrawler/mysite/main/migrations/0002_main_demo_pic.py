# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-06-30 10:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='main_demo_pic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=20)),
                ('pic_num', models.CharField(max_length=1)),
                ('pic_A_title', models.CharField(max_length=10)),
                ('pic_A_imgpath', models.CharField(max_length=100)),
                ('pic_B_title', models.CharField(max_length=10)),
                ('pic_B_imgpath', models.CharField(max_length=100)),
            ],
        ),
    ]
