require 'open-uri';
require 'JSON';

class Findstore

	attr_accessor :locations, :link

	def initialize
		@locations = [[],[],[]]
		@result = ""
	end

	def find_all
		url = "http://lcboapi.com/stores"
		doc = open(url).read
		parsed = JSON.parse(doc)
		stores = parsed["result"]

		data = stores.each do |store|
			@locations[0] << store["longitude"]
			@locations[1] << store["latitude"]
			@locations[2] << store["inventory_volume_in_milliliters"]
		end
		@locations = locations[2].zip(locations[1],locations[0])
		@locations = locations.sort
	end

	def make_link
		#those stores are selected where the most alcohol in milliliters is stored
		three_stores = find_all.last(3)
		stem = "http://maps.googleapis.com/maps/api/staticmap?center=Toronto,Ontario,Canada&zoom=12&size=600x300&maptype=roadmap"
		tail = "&sensor=false"
		three_stores.each do |store|
			pos = store[1]
			neg = store[2]
			trunk = "&markers=color:blue%7Clabel:S%7C#{pos},#{neg}"

			@result << trunk
		end
		@link = stem + @result + tail
	end
end

test = Findstore.new
test.make_link
puts test.link

