# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# http://doc.scrapy.org/en/latest/topics/items.html

from scrapy.item import Item, Field


class LowcrawlerItem(Item):
    web_url=Field()
    movie_name = Field()
    movie_date = Field()
    movie_url = Field()
    image_urls = Field()
    images = Field()
    image_paths = Field()
    mongodb_id = Field()
