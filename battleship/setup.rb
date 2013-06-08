class Ship

	def ship(i, a)
		ship2 = Array.new(2){Array.new(2, @data[i][a])}
		ship3 = Array.new(3){Array.new(2, @data[i][a])}
		ship4 = Array.new(4){Array.new(2, @data[i][a])}
		ship5 = Array.new(5){Array.new(2, @data[i][a])}
	end

	def create_ship(x, y)
		i = 2
		2.upto(5) do |ship| ship_Array.new(i){Array.new(2, @data[x][y])}
		end
	end

	class Player_ship < Ship

	end

	class Computer_ship < Ship

	end

end


class Sea

	attr_accessor :battlefield

   	def initialize
   		@data = setup_data
	    # @battlefield = display_battlefield
   	end

   	def setup_data
   		data = Array.new(11, "-") { Array.new(10, "-") }
    	data[10][(0..9)] = ("0".."9").to_a
    	return data
   	end

	def [](x, y)
	    @data[x][y]
	end

	def []=(x, y, value)
	    @data[x][y] = value
	end

	def display_battlefield
		row = 0
		@data.each do |element|
			print "#{row}" if row < 10
			print "  " if row > 10
			print "#{element}\n\n"
			row += 1
		end
	end

	def update_battlefield(player, shot)
	  	
	end

end


class Shots
	class Player_shots

	end

	class Computer_shots

	end
end
