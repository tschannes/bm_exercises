class TicTac
	WINNING_COMBOS = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
	attr_accessor :winner, :board, :number_of_rounds_total

	def initialize
			@number_of_rounds_total = 0	
			@board = "1 2 3\n-----\n4 5 6\n-----\n7 8 9"
			@list_of_guesses = []
	end


	def increment_count
		@number_of_rounds_total += 1
	end


	def list_of_guesses(num)
		@list_of_guesses = {:X => [], :O => []}
		updated_list = {:X => {}, :O => {}}
		@list_of_guesses.each { |k, v| v << num if "#{k}" == "#{player}" }
		#@list_of_guesses.merge(updated_list) {|key, a_val, b_val| a_val.merge b_val if "#{key}" == "#{player}"}
		#hash = Hash.new {|h,k| h[k] = [] }
		#@list_of_guesses.each {|l| k,v = l.split(""); hash[k] << num }

		puts "Die Liste: #{@list_of_guesses.inspect}, Player: #{player}"
	end


	def win?(list_of_guesses)
		WINNING_COMBOS.each do |small_array|
			if (small_array & @list_of_guesses.values) == small_array
				return true
			end
		end
		false
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