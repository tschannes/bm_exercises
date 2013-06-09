class Sea

	attr_accessor :data, :player

	def initialize
		@ship_coordinates = []
		@fleet = Array.new(4){Array.new(1)}
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
		
	end

	def define_ships(player) #OUTPUTS THE FLEETS COORDINATES
		puts "Set your ships by entering coordinates:"
		counter = 0
		2.upto(2) do |i|
			@ship_coordinates = []
			puts "Set your ship with length #{i}!"
			i.times do 
				print "X:"
				x = gets.chomp.to_i
				print "Y:"
				y = gets.chomp.to_i
				coordinate = [x,y]
				@ship_coordinates << coordinate
				puts @ship_coordinates.inspect
			end
			@fleet[counter] = @ship_coordinates
			@fleet = @fleet.flatten.compact.each_slice(2).to_a
			puts "The current fleet is #{@fleet}"
			counter += 1
		end
		@fleet
	end


	def update(player) #PUTS FLEET ONTO @DATA
		@fleet.each do |small_ary|
			x = small_ary[0]
			y = small_ary[1]
			if player == "X" 
				@data[x][y] = "X"
			elsif player == "Y"
				@data[x][y] = "Y"
			end
		end
		@data
	end

	def player(round)
		if round.even?
			"X"
		elsif !round.even?
			"Y"
		end	
	end

end
