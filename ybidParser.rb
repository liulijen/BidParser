#encoding: utf-8
require 'nokogiri'
require 'open-uri'
require 'iconv'
s1=open("http://tw.search.bid.yahoo.com/rss/search/?mac")
s1.rewind
puts  Iconv.conv("big5",s1.charset,s1.readlines.join("\n"))
#html_doc = Nokogiri::HTML(open("http://tw.search.bid.yahoo.com/rss/search/?mac")).xpath("//body").each{|m|
	#puts Iconv.conv("utf-8",m.charset,m)
#}

