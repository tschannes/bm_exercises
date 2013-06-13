require 'CSV'

data = {:price => [], :description => []}

CSV.foreach("data.csv") do |row|
  data[:price][0] << row.select(/(\d,\d+.|\d+.)\d\d/)
  data[:description][1] << row.select(/[a-zA-Z]/)
end

data.inspect