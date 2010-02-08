require 'nokogiri'
require 'open-uri'
html_doc = Nokogiri::HTML(open("http://tw.search.bid.yahoo.com/rss/searchrss?p=D700")).xpath("//body").each{|m|
	puts m
}

