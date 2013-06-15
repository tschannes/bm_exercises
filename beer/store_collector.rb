require 'open-uri'
require 'JSON'
require 'CSV'



class Beer

	attr_accessor :data

	def initialize
		@data = {address1:[], address2: [], city:[], post:[]}
	end

	def get_data
		url = "http://lcboapi.com/stores"
		raw = open(url).read

		parsed = JSON.parse(raw)

		stores = parsed["result"]
			stores.each do |store|
				# @data[:longitude] << store["longitude"]
				# @data[:latitude] << store["latitude"]
				# @data[:name] << store["name"]
				@data[:address1] << store["address_line_1"]
				@data[:address2] << store["address_line_2"]
				@data[:city] << store["city"]
				@data[:post] << store["postal_code"]
				
			end
		@data
		
	end
end
puts @data.inspect

# karte = Data.new
# puts karte.get_data
locations = Beer.new
locations = locations.get_data

CSV.open('data.csv', 'wb') do |row|
  locations.each do |d|
    row << d
  end
end