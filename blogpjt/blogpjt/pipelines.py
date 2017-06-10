# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: http://doc.scrapy.org/en/latest/topics/item-pipeline.html
import pymysql

class BlogpjtPipeline(object):
    def __init__(self):
        self.conn = pymysql.connect(host='127.0.0.1',user='root',passwd='charrychen',db='test')
        self.cur = self.conn.cursor()

    def process_item(self, item, spider):
        for j in range(len(item['name'])):
            name = item['name'][j]
            url = item['url'][j]
            hits = item['hits'][j]
            comment = item['comment'][j]
            pageurl = item['pageurl']
            sql = "insert into blog(name,url,hits,comment,pageurl) values('"+name+"','"+url+"','"+hits+"','"+comment+"','"+pageurl+"')"
            #self.conn.query(sql)
            self.cur.execute(sql)
        self.conn.commit()
        return item
    def close_spider(self,spider):
        self.conn.close()
