require 'test/unit'
require_relative '../tictac2.rb'

class TicTacTest < Test::Unit::TestCase

	def setup
		
		@list_of_guesses = {:X => [2], :O => []}
		@tic = TicTac.new
	end

	def test_guess_increment_adds_value_to_guesses
		player = :O
		assert_equal @list_of_guesses, @tic.guess(2)
	end

	def test_guess_increments_number_of_item_in_array
		player = :X
		assert_not_equal @list_of_guesses[player], @tic.guess(2)
	end

	def test_guess_adds_value_to_the_right_key
		@number_of_rounds_total = 1
		@list_of_guesses = {:X => [0], :O => [2]}
		
		assert_equal @list_of_guesses, @tic.guess(2)
	end

	# def test_whether_player_selection_works
	# 	@number_of_rounds_total = 5
	# 	assert_equal :X, @tic.player
	# end

	# def test_whether_player_selection_works_with_uneven
	# 	@number_of_rounds_total = 3
	# 	assert_equal :Y, @tic.player
	# end

	# def test_whether_the_draw_method_recognizes_a_draw
	# 	@board = "X O X\n-----\nO X O\n-----\nX O X "
	# 	win? = false
	# 	assert_equal true, @tic.draw?
	# end

end