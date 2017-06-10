# -*- coding: utf-8 -*-
import scrapy
from imagepjt.items import ImagepjtItem
import re
from scrapy.http import Request

class ImagespiderSpider(scrapy.Spider):
    name = 'imagespider'
    allowed_domains = ['58pic.com']
    start_urls = ['http://58pic.com/tb']

    def parse(self, response):
        item = ImagepjtItem()
        #提取缩略图URL
        urlpat = "(http://pic.qiantucdn.com/58pic/.*?).jpg"
        item['picurl'] = re.compile(urlpat).findall(str(response.body))
        #提取图片id
        idpat = "http://pic.qiantucdn.com/58pic/.*?/.*?/.*?/(.*?).jpg"
        item['picid'] = re.compile(idpat).findall(str(response.body))
        yield item
        #循环爬取多个页面
        pagenum = 10
        for i in range(pagenum):
            nexturl = "http://www.58pic.com/tb/id-"+str(i)+".html"
            yield Request(nexturl,callback=self.parse)
