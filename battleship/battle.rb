require_relative "setup"
require_relative "shots"
require_relative "sea"

class Battle
	def self.run
		puts "!!!!!!!!!!!!!!!WELCOME TO BATTLESHIP!!!!!!!!!!!!!!"
		puts ""
		battle = Sea.new
		battle.display_battlefield
		puts ""
		
		fleet = Ship.new
		fleet.set_ship.write_to_data
		# puts battle.data.inspect
		# fleet.write_to_data
		# @battlefield
		battle.display_battlefield
		

		while true
		

		break
		end
	end
end

Battle.run