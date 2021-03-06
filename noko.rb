require 'open-uri'
require 'nokogiri'

@counts = Hash.new(0)

def words_from_string(string)
  string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
  for word in word_list
    @counts[word] += 1
  end
  @counts
end

doc = Nokogiri::HTML(open('https://www.google.com/#q=%22Joshua+Toy%22'))

####
# Search for nodes by css
entries = doc.css('span.st')
puts "Parsing #{entries.length} entries"
entries.each do |entry|
  words = words_from_string(entry.content)
  count_frequency(words)
end

sorted  = @counts.sort_by { |word, count| count }
puts sorted.map { |word, count| "#{word}: #{count}"}
