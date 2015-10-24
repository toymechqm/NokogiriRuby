require 'mechanize'

mechanize = Mechanize.new

page = mechanize.get('http://www.bbc.com/news')
page2 = mechanize.get('https://www.bostonglobe.com/')
page3 = mechanize.get('http://www.huffingtonpost.com/')
page4 = mechanize.get('http://www.foxnews.com/')


puts page.at("span.title-link__title-text").text.strip
puts page2.at("h2.story-title.hed-lead").text.strip
puts page3.at("div#splash_block a").text.strip
puts page4.at("h1 a").text.strip
