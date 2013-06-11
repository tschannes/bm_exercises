class TicTac
	WINNING_COMBOS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
	attr_accessor :winner, :board, :number_of_rounds_total

	def initialize
			@number_of_rounds_total = 0	
			@board = "1 2 3\n-----\n4 5 6\n-----\n7 8 9"
			@list_of_guesses = {:X => [], :O => []}
			@list_of_guesses.default = nil
	end


	def increment_count
		@number_of_rounds_total += 1
	end


	def list_of_guesses(num)
		@list_of_guesses.each { |k, v| v << num if "#{k}" == "#{player}" }
	end


	def win?
		
		WINNING_COMBOS.each do |small_array|
			# puts "Small Array.inspect" + small_array.inspect #=> [1, 2, 3]
			# puts player
			# puts @list_of_guesses[player].inspect
			if @list_of_guesses[player] & small_array == small_array && @list_of_guesses[player].size == 3
				puts "#{player} wins!"
				true
			else
			end
		end
	end


	def draw?
		true unless @board.match(/\d/) && win?(@list_of_guesses) == false
	end


	def player
		if @number_of_rounds_total.even?
			:X
		else
			:O
		end
	end


	def display_guess(num)
		#print "we are trying to replace #{num.inspect} with #{player} on #{@board.inspect}"
		@board.gsub!("#{num}", "#{player}")
	end	
end