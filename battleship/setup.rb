class ship

	def define_ships

	end

	class player_ship

	end

	class computer_ship
	end

end

class sea

	attr_accessor :sea
	
	def initialize
		sea = {:one => [], :two => [], :three => [], :four => [], :five => [], :six => [], :seven => [], :eight=> [], :nine=>[], :ten => []}
			
	end

	def display_sea
		display_sea = @sea[:one] + "\n"
	end
end

class shots

	class player_shots

	end

	class computer_shots

	end
end
