require_relative "Setup"

class Battle
	def self.run
		while true
		puts "!!!!!!!!!!!!!!!WELCOME TO BATTLESHIP!!!!!!!!!!!!!!"
		puts Sea.new.display_battlefield

		break
		end
	end
end

Battle.run