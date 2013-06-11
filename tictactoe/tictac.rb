class TicTac
	WINNING_COMBOS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
	attr_accessor :winner, :board, :number_of_rounds_total

	def initialize
			@number_of_rounds_total = 0	
			@board = "1 2 3\n-----\n4 5 6\n-----\n7 8 9"
			@list_of_guesses = {:X => [], :O => []}
			# @list_of_guesses.default = nil
	end


	def increment_count
		@number_of_rounds_total += 1
	end


	def guess(num)
		@list_of_guesses.each { |k, v| v << num if "#{k}" == "#{player}" }
	end


	def win?
		# (0.upto(7)) do if WINNING_COMBOS[i]
		guesses = @list_of_guesses[player]
		win = WINNING_COMBOS.map do |small_array| 
			true if (small_array & guesses == guesses )
			puts "ary : #{small_array}"
			puts "guesses: #{@list_of_guesses[player]}"
			puts "win inspect: #{win.inspect}"
			end
		win = win#.compact.flatten
		puts "list of guesses: #{@list_of_guesses}"
	end


	def draw?
		 !@board.match(/\d/) && win? == false
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