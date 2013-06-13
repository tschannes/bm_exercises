require 'CSV'

data = {:price => [], :description => []}

# CSV.foreach("data.csv") do |row|
#   data[:price] << row.select(/(\d,\d+.|\d+.)\d\d/)
#   data[:description] << row.select(/[a-zA-Z]/)
# end

data.inspect


a.select {|v| v =~ /[aeiou]/} 