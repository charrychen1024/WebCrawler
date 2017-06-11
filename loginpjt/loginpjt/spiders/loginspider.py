# -*- coding: utf-8 -*-
import scrapy
import urllib.request
from scrapy.http import Request,FormRequest
import  re
import requests

class LoginspiderSpider(scrapy.Spider):
    name = 'loginspider'
    allowed_domains = ['douban.com']
    #start_urls = ['http://douban.com/']
    header = {"User-Agent":"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.110 Safari/537.36"}

    def start_requests(self):
        return [Request("https://accounts.douban.com/login",headers=self.header,meta={"cookiejar":1},callback=self.parse)]
    def parse(self, response):
        #获取验证码图片所在地址
        captcha = response.xpath('//img[@id="captcha_image"]/@src').extract()
        #登录时验证码时有时无，需要判断是否需要输入验证码
        if len(captcha) > 0:
            print("需要输入验证码")
            #设置验证码图片保存到本地第路径
            localpath = './captcha/captcha.png'
            #下载验证码
            urllib.request.urlretrieve(captcha[0],filename=localpath)
            print("请输入验证码")
            capcha_value = input()
            #post
            data = {
                "form_email":"jiarui201106@163.com",
                "form_password":"charrychen@123",
                "captcha-solution":capcha_value,
                "redir":"https://www.douban.com/people/61895658/"
            }
        else:
            print("无需验证码")
            data = {
                "form_email": "jiarui201106@163.com",
                "form_password": "charrychen@123",
                "redir": "https://www.douban.com/people/61895658/"
            }
        print("登录中……")
        #通过FormRequest.form_response()进行登录
        return [
            FormRequest.from_response(response,meta={"cookiejar":response.meta["cookiejar"]},
                                      headers=self.header,formdata=data,callback=self.next)
        ]

    def next(self,response):
        print("登录成功")
        try:
            fh = open('./data/page1.html','wb')
            fh.write(response.body)
            print("网页保存成功")
        except Exception as e:
            print("网页保存失败")
        finally:
            fh.close()
        #打开需要爬取的日记页面
        #notepage = 'https://www.douban.com/people/61895658/notes'
        #data = urllib.request.urlopen(notepage).read().decode('utf-8')
        #data = requests.get(notepage,headers=self.header)
        #提取日记标题，日记链接，发布时间，日记内概要
        '''
        sel = scrapy.Selector(data)
        notetitle = sel.xpath('//div[@class="note-header pl2"]/a/@title')
        notelink = sel.xpath('//div[@class="note-header pl2"]/a/@href')
        notetime = sel.xpath('//div[@class="note-header pl2"]/span[@class="pl"]/text()')
        notecontent = sel.xpath('//div[@class="note"]/text()')
        '''

        notetitle = response.xpath('//div[@class="note-header pl2"]/a/@title').extract()
        notelink = response.xpath('//div[@class="note-header pl2"]/a/@href').extract()
        notetime = response.xpath('//div[@class="note-header pl2"]//span[@class="pl"]/text()').extract()
        notecontent = response.xpath('//div[@class="note"]/text()').extract()


        #循环打印
        for i in range(0,len(notetitle)):
            print("第"+str(i+1)+"篇日记信息如下：")
            print("日记标题："+notetitle[i])
            print("日记链接：" + notelink[i])
            print("日记发布时间：" + notetime[i])
            print("日记内容概要：" + notecontent[i])
            print("-"*20)

