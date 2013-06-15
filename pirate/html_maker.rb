require 'CSV'

html = File.new("index.html", "w+")

html.puts "<!doctype html>"
html.puts "<html lang='en'>"
html.puts "<head>"
	html.puts "<meta charset='UTF-8'>"
	html.puts "<link rel='stylesheet' href='style.css'>"
	html.puts "<title>The biggest movie ever!</title>"
html.puts "</head>"
html.puts "<body>"
	html.puts "<div id='container'>"
		html.puts "<h1>The biggest movie ever!</h1>"
		html.puts "<p>brought to you by Tiger, The Fat Cat</p>"
		html.puts "<div id='graph'>"


#grabbing names and sizes from data
	i = 10
	CSV.foreach("data.csv") do |row|
  		name = row[0]
  		size = row[1]
  		size = size.scan(/(\d+)/)

	
			html.puts "<div class='column' style='height:#{(size[0][0].to_i)/4000000}px;'>"
				html.puts "<a><span>#{name}<br>#{size[0][0].to_i} Bytes</span></a>"
			html.puts "</div>"
			i += 1
	end	
			
		html.puts "</div>"
	html.puts "</div>"
	
html.puts "</body>"
html.puts "</html>"



html.close()