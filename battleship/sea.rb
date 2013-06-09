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

	def display_battlefield(current_input)
		print "#{@legend}\n"
		50.times do print "-" end
		print "\n\n"
		row = 0
		current_input.each do |element|
			print "#{row} #{element}\n\n"
			row += 1
		end
		
	end

	# def update_battlefield(update)
	# 	print "#{@legend}\n"
	# 	50.times do print "-" end
	# 	print "\n\n"
	# 	row = 0
	# 	update.each do |element|
	# 		print "#{row} #{element}\n\n"
	# 		row += 1
	# 	end
	# end

end