require 'test/unit'
require_relative '../tictac2.rb'

class TicTacTest < < Test::Unit::TestCase

	def setup
		@board
		@list_of_guesses = [1, 3, 8]
		@tic = TicTac.new
	end

	def test_increment_adds_value_to_guesses
		assert_equal [1, 3, 8, 2], @tic.guess(2)
	end

end