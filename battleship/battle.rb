require_relative "setup"
require_relative "shots"
require_relative "sea"

class Battle
	def self.run
		puts "!!!!!!!!!!!!!!!WELCOME TO BATTLESHIP!!!!!!!!!!!!!!"
		puts ""
		puts Sea.new.display_battlefield
		puts ""
		
		fleet = Ship.new
		fleet.set_ship_coordinate
		fleet.show
		

		while true
		

		break
		end
	end
end

Battle.run