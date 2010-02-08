#encoding: utf-8
require 'BidItemStruct'
class YbidParser < BidItemStruct
	def initialize 
		require 'nokogiri'
		require 'open-uri'
		require 'iconv'
		s1=open("http://tw.search.bid.yahoo.com/rss/search/mac")
		s1.rewind
		Nokogiri::HTML(Iconv.conv("big5",s1.charset,s1.readlines.join("\n"))).xpath("//item").each{|m|
			puts "\n\n\n"	
			puts m	

		}
		
	end
end
YbidParser.new
