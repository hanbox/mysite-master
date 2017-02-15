# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
#import json
#import codecs

#class LowcrawlerPipeline(object):
#    def process_item(self, item, spider):
#        return item
import json
import codecs
import datetime
from scrapy.conf import settings

class LowcrawlerPipeline_Json(object):

    def __init__(self):
        self.ids_seen = set()
        self.file = codecs.open('movie_data.json', mode='wb', encoding='utf-8')

    def process_item(self, item, spider):
        #使用set去重
        if item['web_url'] in self.ids_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.ids_seen.add(item['web_url'])
            
            #存储至json
            line = json.dumps(dict(item)) + '\n'
            self.file.write(line.decode("unicode_escape"))
       
        return item

    def spider_closed(self, spider):
    	self.file.close()

import pymongo
class LowcrawlerPipeline_Mongodb(object):

    def __init__(self):
        self.ids_seen = set()

        dbConn = pymongo.MongoClient(
           settings['MONGODB_SERVER'],
           settings['MONGODB_PORT']
        )
        self.db = dbConn[settings['MONGODB_DB']]


    def process_item(self, item, spider):
        #使用set去重
        if item['web_url'] in self.ids_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.ids_seen.add(item['web_url'])

            #存储至mongodb
            movie_detail = {
                'web_url':item.get('web_url'),
                'movie_name':item.get('movie_name'),
                'movie_date':item.get('movie_date'),
                'movie_url':item.get('movie_url'),
                'image_paths':item.get('image_paths'),
                'update_time':datetime.datetime.utcnow(),
            }
        
            result = self.db['movie_detail'].insert(movie_detail)
            item["mongodb_id"] = str(result)

        return item

    def spider_closed(self, spider):
    	self.file.close()

import MySQLdb
class LowcrawlerPipeline_Mysql(object):

    def __init__(self):
        self.ids_seen = set()

        self.conn = MySQLdb.connect(user=settings['MYSQL_USER'], passwd=settings['MYSQL_PWD'], db=settings['MYSQL_DB'], host=settings['MYSQL_HOST'], charset="utf8", use_unicode=True)
        self.cursor = self.conn.cursor()

        #清空表：
        self.cursor.execute("truncate table list_movie_detial")
        self.conn.commit()

    def process_item(self, item, spider):
        #使用set去重
        if item['web_url'] in self.ids_seen:
            raise DropItem("Duplicate item found: %s" % item)
        else:
            self.ids_seen.add(item['web_url'])

            # 存储至mydsql
            try:
                self.cursor.execute("""INSERT INTO list_movie_detial (web_url, movie_name, movie_date, movie_url, image_paths)  
                      VALUES (%s, %s, %s, %s, %s)""", 
                      (
                        item.get('web_url'), 
                        item.get('movie_name'),
                        item.get('movie_date'),
                        item.get('movie_url'),
                        item.get('image_paths'),
                      )
                )
                self.conn.commit()
            except MySQLdb.Error, e:
                print "Error %d: %s" % (e.args[0], e.args[1])

        return item

    def spider_closed(self, spider):
    	self.file.close()
        
        
