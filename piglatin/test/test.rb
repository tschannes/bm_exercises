require_relative '../latin.rb'
require 'test/unit'

class TestPigLatinConverter < Test::Unit::TestCase

	def setup
		
	end

	def test_convert_converts_word_with_vocals
		assert PiglatinConverter.respond_to?(:convert)
		assert_equal "ello", PiglatinConverter.convert("ello")
	end

	def test_convert_does_not_convert_words_vocals
		assert_equal "ellohay", PiglatinConverter.convert("Hello")
	end

	def test_converter_modifies_elements_of_string
		assert_equal "ellohay orldway apple", PiglatinConverter.converter("hello world apple")
	end
	
end