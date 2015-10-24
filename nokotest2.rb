require 'rubygems'
require 'nokogiri'
require 'open-uri'
doc = Nokogiri::HTML(open('http://www.theorthoinstitute.com/physicians/default.asp'))
option = doc.css('option')

puts option
