require 'Nokogiri'
require 'Open-Uri'
require 'pry'
require 'CSV'

doc = Nokogiri::HTML(open('http://www.ebay.com/sch/i.html?_odkw=moulton&_osacat=177831&_from=R40&_trksid=p2045573.m570.l1313.TR0.TRC0&_nkw=moulton&_sacat=177831'))



moultons = {:description => []}, {:price =>[]}
	
	description = doc.css('.dtl')
	description.each do |x|
		moultons[0][:description] << x.text.to_s.gsub(/\r/, "").gsub(/\n/, "").gsub(/\t/, "").gsub(/\s{2}/, "").gsub(/or Best Offer/, "").gsub(/Buy It Now/, "")
	end


	price = doc.css('.g-b')	
	price.each do |x|
		moultons[1][:price] << x.text.to_s.gsub(/\r/, "").gsub(/\n/, "").gsub(/\t/, "").gsub(/\s{2}/, "").gsub(/or Best Offer/, "").gsub(/Buy It Now/, "")
	end


contact_row_data = moultons.each do |row|
	row = [moultons[:description][0], moultons[:price][1]]
end
pry.binding


CSV.open('data.csv', 'wb') do |row|
  row << contact_row_data
  end



