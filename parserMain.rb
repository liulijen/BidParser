# 
# main.rb
# 
# Created on 2008/5/29, 下午 03:22:45
# 
# To change this template, choose Tools | Templates
# and open the template in the editor.
 
require 'hpricot'
require 'open-uri'
def yBidParse(target)
resultArr=[]   
rawPage=open("http://tw.search.bid.yahoo.com/search/ac?p="+target).read
result=Hpricot.parse(rawPage)
result.search("tr").each do |item|
  (item/'th').each do |link|
    (link/'a').each do |link2|
        resultArr << link2        
    end
  end 
  (item/'strong').each do |price|
     resultArr<<price.inner_html()
  end
end
  return resultArr  #return link,價格,直購
end
def rutenBidParse(target)
resultArr=[]   
rawPage=open("http://search.ruten.com.tw/search/s000.php?searchfrom=searchbar&k="+target+"&t=0").read
result=Hpricot.parse(rawPage)
result.search("//td[@class='bk16b']").each do |item|

    (item/'a').each do |link|
        puts link      
    end
result.search("//td[@class='rd13']").each do |item|
    (item/'b').each do |price|
        puts price      
    end
end
end

  return resultArr  #return link,價格,直購
end
resultArr=rutenBidParse("d80")
#i=0
#resultArr.each do |link|
# i+=1 
#  puts i,link
#end


