require_relative "tictac"

class TicTacRunner

	def self.run 
	  @game = TicTac.new()
	  while true
    	puts"\nBoard:\n#{@game.board}"
	    puts"#{@game.player} make your move:"
	    num = gets.chomp.to_i
	    @game.list_of_guesses(num)
		@game.display_guess(num)
	    if @game.win?(@game.list_of_guesses(num))
	    	puts "\n\nCongratulations! You won!\n"
	    	break
	    elsif @game.draw?
	    	puts "\n\nDraw\n"	
	    	break
	    end
	    @game.increment_count
	    puts "+++++++++++++++++++++++++++++++++++++++\n"
    end
  end
end

TicTacRunner.run