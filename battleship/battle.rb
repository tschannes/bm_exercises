require_relative "setup"
# require_relative "shots"
# require_relative "sea"

class Battle
	def self.run
		puts "!!!!!!!!!!!!!!!WELCOME TO BATTLESHIP!!!!!!!!!!!!!!"
		puts ""
		@battle = Sea.new
		@battle.display_battlefield
		puts ""

		
		round = 1
		
		while true
		
			2.times do |x|
			player = @battle.player(x)
			puts "Player #{player}! Position your ships!"
			# @battle.player(x)
			
			@battle.define_ships(player)
			@battle.update(player)
			@battle.display_battlefield
			
			end

			puts "Player #{@battle.player(round)}, take shot Nr. #{round}."
			
		
			round += 1
		break
		end
	end
end

Battle.run