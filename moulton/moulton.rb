require 'Nokogiri'
require 'Open-Uri'
require 'pry'
require 'CSV'

doc = Nokogiri::HTML(open('http://www.ebay.com/sch/i.html?_odkw=moulton&_osacat=177831&_from=R40&_trksid=p2045573.m570.l1313.TR0.TRC0&_nkw=moulton&_sacat=177831'))



moultons = [["description"],["price"]]
	

	description = doc.css('div.ittl h4 a.vip')
	description.each do |x|
		unless x.text.strip.empty?
			moultons[0] << x.text.to_s.gsub(/\r/, "").gsub(/\n/, "").gsub(/\t/, "").gsub(/\s{2}/, "").gsub(/or Best Offer/, "").gsub(/Buy It Now/, "")
		end
	end


	price = doc.css('div.g-b')	
	price.each do |x|
		unless x.text.strip.empty?
			moultons[1] << x.text.to_s.gsub(/\r/, "").gsub(/\n/, "").gsub(/\t/, "").gsub(/\s{2}/, "").gsub(/or Best Offer/, "").gsub(/Buy It Now/, "")
		end
	end
	moultons = moultons[1].zip(moultons[0])
	# moultons = moultons.each do |moulton|

	# puts "without iteration"
	# puts moultons.inspect


CSV.open('data.csv', 'wb') do |row|
  moultons.each do |d|
    row << d
  end
end