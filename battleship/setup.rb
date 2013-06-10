class Sea

	attr_accessor :data, :x

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

	def define_ships(x, y, counter) #OUTPUTS THE FLEETS COORDINATES
		coordinate = [x,y]
		@ship_coordinates << coordinate
			puts @ship_coordinates.inspect
		@fleet[counter] = @ship_coordinates
		@fleet = @fleet.flatten.compact.each_slice(2).to_a
		@fleet
	end

	def display_battlefield #DISPLAY EMPTY BOARD
		print "#{@legend}\n"
		50.times do print "-" end
		print "\n\n"
		row = 0
		@data.each do |element|
			print "#{row} #{element}\n\n"
			row += 1
		end
		
	end

	def update #PUTS FLEET INTO @DATA
		@fleet.each do |small_ary|
			x = small_ary[0]
			y = small_ary[1]
			if player(x) == "A" 
				@data[x][y] = "A"
			elsif player(x) == "B"
				@data[x][y] = "B"
			end
		end
		@data
	end

	def player(x)
		if x.even?
			"A"
		elsif !x.even?
			"B"
		end	
	end

	def shot(shot_x, shot_y, round)
		if @data[shot_x][shot_y] != ("#{player(round)}" && "-")
			@data[shot_x][shot_y] = "X"
		else
			@data[shot_x][shot_y] = "="
		end
	end

	def wins?
		puts @data.flatten.inspect
		if (@data.flatten & ["B"]).empty?
			puts "A wins!"
			false
		elsif (@data.flatten & ["A"]).empty?
			puts "B wins!"
			false
		end
	end

end
