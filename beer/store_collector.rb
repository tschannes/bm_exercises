require 'open-uri'
require 'json'

url = "http://lcboapi.com/stores"


data = [{name:[]}, {latitude: []}, {longitude:[]}]

raw = open(url)

parsed = JSON.parse(raw)


stores = parsed_data["result"]

longitude = stores["longitude"]
data[2][:longitude] << longitude
latitude = stores["latitude"]
data[1][:latitude] << latitude
name = stores["name"]
data[0][:name] << stores

# data = Struct.new
# data = data(:name, :latitude, :longitude)

print data.inspect


