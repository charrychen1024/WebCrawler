# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import urllib.request

class ImagepjtPipeline(object):
    def process_item(self, item, spider):
        for i in range(len(item['picid'])):
            #缩略图url
            thispic = item['picurl'][i]
            #原图url
            trueurl = thispic + '_1024.jpg'
            #下载原图
            urllib.request.urlretrieve(trueurl,filename='./data/'+item['picid'][i]+'.jpg')
        return item
