# -*- coding: utf-8 -*-
import scrapy
import re
import urllib.request
from blogpjt.items import BlogpjtItem
from scrapy.http import Request

class BlogspiderSpider(scrapy.Spider):
    name = 'blogspider'
    allowed_domains = ['hexun.com']
    #start_urls = ['http://hexun.com/']
    '''
    start_urls = [
        'http://27636918.blog.hexun.com/p1/default.html','http://27636918.blog.hexun.com/p2/default.html','http://27636918.blog.hexun.com/p3/default.html',
        'http://27636918.blog.hexun.com/p4/default.html','http://27636918.blog.hexun.com/p5/default.html','http://27636918.blog.hexun.com/p6/default.html'
    ]
    '''

    uid = 27636918
    def start_requests(self):
        yield Request('http://'+str(self.uid)+'.blog.hexun.com/p1/default.html',headers={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36'})
        #for url in self.start_urls:
            #yield Request(url, headers={'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36'})

    def parse(self, response):
        item = BlogpjtItem()
        item['name'] = response.xpath('//span[@class="ArticleTitleText"]/a/text()').extract()
        item['url'] = response.xpath('//span[@class="ArticleTitleText"]/a/@href').extract()
        #提取存储评论数和点击数的网址
        hcurl_pat = '<script type="text/javascript" src="(http://click.tool.hexun.com/.*?)">'
        hcurl = re.compile(hcurl_pat).findall(str(response.body))[0]
        #模拟成浏览器
        headers2 = ('User-Agent','Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36')
        opener = urllib.request.build_opener()
        opener.addheaders = [headers2]
        urllib.request.install_opener(opener)
        data = urllib.request.urlopen(hcurl).read()
        #提取文章阅读数和评论数
        clicknum_pat = "click\d*?','(\d*?)'"
        comnum_pat = "comment\d*?','(\d*?)'"
        item['hits'] = re.compile(clicknum_pat).findall(str(data))
        item['comment'] = re.compile(comnum_pat).findall(str(data))
        #获取当前页面url
        item['pageurl'] = response.url
        print(response.url)
        yield item

        #循环爬取下一页的博文数据
        pagenum = 10
        for i in range(2,pagenum+1):
            nexturl = 'http://'+str(self.uid)+'.blog.hexun.com/p'+str(i)+'/default.html'
            yield  Request(nexturl,callback=self.parse,headers={'User-Agent':'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36'})



