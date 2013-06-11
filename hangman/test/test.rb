require_relative '../hangman2.rb'
require 'test/unit'

class TestHangman < Test::Unit::TestCase

	def setup
		@hangman = Hangman.new
		@board = "canada"

		# @chances = 0
	end

	def test_initialize_all_variables
		assert_equal "", @hangman.string 
		assert_equal 8, @hangman.chances
		assert_equal "", @hangman.guesses
		assert_equal ["canada", "england", "australia", "japan"].first, @hangman.word
		assert_equal "______", @hangman.draw_board
	end

	def test_put_word_on_board_puts_words_on_board
		@hangman.put_letter_on_board("c")
		assert_equal "c_____", @hangman.board
	end

	def test_guess_method_returns_valid_guess
		assert_equal 6, @hangman.guess("a")
	end

	def test_guess_method_valid_but_not_on_board_decrement_chances
		assert_equal 7, @hangman.guess("z")
	end

	def test_guess_method_raises_exception_when_invalid
		assert_raise Hangman::InvalidGuessException do 
			@hangman.guess(3) 
		end
	end

	def test_wins_if_board_is_filled_in
		# assert_equal true, @guesses.include? (["c","a","n","d"])
		@hangman.guess("c")
		@hangman.guess("a")
		@hangman.guess("n")
		@hangman.guess("d")
		assert_equal true, !@board.include?("_")
		assert @hangman.win?
	end

	def test_decreasing_chances
		@hangman.guess("X")
		@hangman.guess("Z")
		@hangman.guess("Q")
		@hangman.guess("U")
		@hangman.guess("M")
		@hangman.guess("S")
		assert_equal false, @hangman.chances == 0
	end

	def test_lost_game
		@hanger = Hangman.new
		@hanger.guess("X")
		@hanger.guess("Z")
		@hanger.guess("Q")
		@hanger.guess("U")
		@hanger.guess("M")
		@hanger.guess("S")
		@hanger.guess("B")
		@hanger.guess("J")
		assert_equal true, @hanger.lost?
	end



end