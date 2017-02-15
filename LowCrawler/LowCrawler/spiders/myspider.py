# -*- coding: utf-8 -*-

from scrapy.spiders import Spider
from scrapy.selector import Selector
from scrapy_redis.spiders import RedisSpider
from LowCrawler.items import LowcrawlerItem
from scrapy.http import Request

class MySpider(Spider):
    name = "movie"
    start_urls = [#'http://www.dygang.com/1080p/',
                  #'http://www.dygang.com/720P/',
                  #'http://www.dygang.com/3d/',
                  #'http://www.dygang.com/jilupian/',
                  #'http://www.dygang.com/dmq/',
                  #'http://www.dygang.com/zy/',
                  #'http://www.dygang.com/yx/',
                  #'http://www.dygang.com/dsj1/',
                  #'http://www.dygang.com/dsj/',
                  'http://www.dygang.com/',
                  #'http://www.dygang.com/ys/',
                  #'http://www.dygang.com/bd/',
                  #'http://www.dygang.com/gy/',
                  #'http://www.dygang.com/gp/'
                 ]

    #response 入口点
    def parse(self, response):
        sels = Selector(response)

        #获取最新电影列表link，注：xpath可由chrome右击copy获取
        cur_pages = sels.xpath('//table[@class="border1"]/tbody/tr/td/a[@target="_blank"]')
        for sel in cur_pages:
            try:
	            href = sel.xpath('./@href').extract()[0]       
	            if href: 
		            yield Request(url = href, callback = self.parse_detail)
            except(IndexError, TypeError):
                continue

#        other_pages = sel.xpath('//html/body/table[6]/tbody/tr/td[1]/table/tbody/tr/td/table[3]/tbody/tr/td//a')
#        for page in other_pages:
#            try:
#                href = page.xpath('./@href').extract()[0]
#                if href:
#                    yield Request(
#                        url=href,
#                        callback=self.parse_list,
#                    )
#            except(IndexError, TypeError):
#                continue
                
    #爬取递归
    def parse_list(self, response):
        sels = Selector(response)

        #获取最新电影列表link，注：xpath可由chrome右击copy获取
        cur_pages = sels.xpath('//table[@class="border1"]/tbody/tr/td/a[@target="_blank"]')
        for sel in cur_pages:
            try:
	            href = sel.xpath('./@href').extract()[0]       
	            if href: 
		            yield Request(url = href, callback = self.parse_detail)
            except(IndexError, TypeError):
                continue

        other_pages = sel.xpath('//html/body/table[6]/tbody/tr/td[1]/table/tbody/tr/td/table[3]/tbody/tr/td//a')
        for page in other_pages:
            try:
                href = page.xpath('./@href').extract()[0]
                if href:
                    yield Request(
                        url=href,
                        callback=self.parse_list,
                    )
            except(IndexError, TypeError):
                continue

       
    #详细信息获取
    def parse_detail(self, response):
        sels = Selector(response)

        hrefs=''
        self.repeat='';

        for sel in sels.xpath('//*[@id="dede_content"]/table/tbody//tr/td/a'):
            href = sel.xpath('./@href').extract()[0] 
            if ( self.repeat != href ):
                self.repeat = href
                hrefs += '<br>'
                hrefs +=  href

        item = LowcrawlerItem()
        item['web_url'] = response.url
        item['movie_name'] = sels.xpath('/html/body/table[6]/tbody/tr/td[1]/table/tbody/tr/td/table[2]/tr/td/div/a/text()').extract()[0]
        item['movie_date'] = sels.xpath('/html/body/table[6]/tbody/tr/td[1]/table/tbody/tr/td/table[3]/tr[2]/td/text()').extract()[0][5:]
        item['movie_url'] = hrefs

        #此处有坑，需要作为数组传过去
        list_image = []
        list_image.append(sels.xpath('/html/body/table[6]/tbody/tr/td[1]/table/tbody/tr/td/table[3]/tr[1]/td[1]/table/tbody/tr/td/img/@src').extract()[0]);
        item['image_urls'] = list_image
        

        yield item  
