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
		#two player setting up their ships
		2.times do |x|
			player = @battle.player(x)
			puts "Player #{player}! Position your ships!"
			
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

					@battle.define_ships(x, y, counter)
					counter += 1
				end
			end

			@battle.update
			@battle.display_battlefield
			
		end

		while @battle.wins?

			puts "Player #{@battle.player(round)}, take shot Nr. #{round}."
			print "X:"
			shot_x = gets.chomp.to_i
			print "Y:"
			shot_y = gets.chomp.to_i
			@battle.shot(shot_x, shot_y, round)
			@battle.display_battlefield
		
		round += 1
		
		end
	end
end

Battle.run