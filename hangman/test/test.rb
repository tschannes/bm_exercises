require_relative '../hangman2.rb'
require 'test/unit'

class TestHangman < Test::Unit::TestCase

	def setup
		@hangman = Hangman.new
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
		
	end

	def test_guess_method_raises_exception_when_invalid
		assert_raise Hangman::InvalidGuessException do 
			@hangman.guess(3) 
		end
	end


end