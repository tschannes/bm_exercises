require 'Nokogiri'
require 'Open-Uri'
require 'pry'
require 'CSV'

class NoAccessError < Exception
end
 


links = []
sizes = []
names = []
url_base = "http://thepiratebay.sx"

#getting the 100 most downloaded movies from piratebay
doc = Nokogiri::HTML(open('http://thepiratebay.sx/top/201'))

url = doc.css('a.detLink').map { |link| link['href'] }

links = url.map do |url|
	url = url_base + url
end

# puts links.length
# puts links.inspect
# puts links[0]
puts "starting to crawl:"


#getting movie sizes from subsites
i = 1
links.each do |link|
	puts "scraping page Nr #{i}"
	begin
		doc = Nokogiri::HTML(open("#{link}"))
	rescue Exception=>e
		puts "Error: #{e}"
		sleep 2
	else
		puts "reading #{link}"
		size = doc.css('div#detailsframe div#details dl.col1 dd')[2].text
		size = size.scan(/(\d+\WBytes)/)
		size = size.flatten
		size = size[0].to_i
		sizes << size

		name = doc.css('div#title').text.strip
		names << name
		i += 1
	ensure
		sleep 1 + rand
	end
end

puts "end of crawl"
puts ""
puts "Sizes: #{sizes.inspect}"
puts "Names: #{names.inspect}"
data = names.zip(sizes)
puts data.inspect
puts "size #{sizes}"

#sorting the data
sorted_data = data.sort_by do |x|
	x[1]
end


#piping data to file
CSV.open('data.csv', 'wb') do |row|
  sorted_data.each do |d|
    row << d
  end
end

#regex for bytes-extraction
# string.scan(/(\d+\WBytes)/)
# => [["1231734066 Bytes"], ["1238182247 Bytes"]]
