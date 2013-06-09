class Sea

	attr_accessor :data

   	def initialize
   		@data = Array.new(10) { Array.new(10, "-") }
   		@legend = setup_legend
   	end

   	def setup_legend
   		legend = Array.new
   		legend[0] = ("0".."9").to_a
   		legend.flatten
   	end

	def [](x, y)
	    @data[x][y]
	end

	def []=(x, y, value)
	    @data[x][y] = value
	end

	def display_battlefield
		print "#{@legend}\n"
		50.times do print "-" end
		print "\n\n"
		row = 0
		@data.each do |element|
			print "#{row} #{element}\n\n"
			row += 1
		end
		Ship.new.write_to_data(@battlefield)
	end

	def update_battlefield(player, shot)
	  	
	end

end