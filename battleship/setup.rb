class Ship

	attr_accessor :battlefield

	def initialize
		@ship_coordinates = []
		@fleet = Array.new(4){Array.new(1)}
		@battlefield = Sea.new.data
	end
	

	def set_ship
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
			@fleet.flatten.compact
			puts "The current fleet is #{@fleet}"
			counter += 1
		end
	end

	def write_to_data
		@fleet = @fleet.flatten.compact.each_slice(2).to_a
		puts @fleet.inspect

		i = 0
		(@fleet.size).times do |address| 
			x = @fleet[i][0]
			y = @fleet[i][1]
			@battlefield[x][y] = "X"	
		i += 1	
		end
		@battlefield
		# Sea.new.display_battlefield
		# @battlefield
		puts @battlefield


		# puts @data.inspect
		# Sea.new.display_battlefield
		
		#ADDRESS = @fleet

		# @battlefield.each do |row|
		# 	row.any? do|coordinate|  
				# if coordinate == @coordinates 
				# 	puts "X: #{@fleet[0]}, Y: #{@fleet.flatten.compact.inspect[1]}"
				# 	@battlefield[@fleet[0]][@fleet[1]] = "X"
	# 			# end
	# 		end
	# 	end
	end

end