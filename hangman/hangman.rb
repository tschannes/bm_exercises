class Hangman
	attr_accessor :array_of_words, :random_index, :chosen_word, :target, :guessed_letters
	def initialize
		@array_of_words = %w(cat dog fox bus moon)
		@random_index = rand(array_of_words.length)
		@chosen_word = array_of_words[random_index]
		@target = chosen_word.split("")
		@hidden_array = []
		@guessed_letters =[]
	end
	
	def make_hidden_array(target)
		(target.length).times do
			hidden_array << "_ " 
		end
	end

	def show_correct_letters
		puts hidden_array.join("")
		number_of_guesses = 8 
		8.times do |guess|
			break if hidden_array == target
			
			#puts "Please enter your guess!"
			#puts "You've already tried: \"#{guessed_letters.join(", ")}\""
			#puts "You've got #{number_of_guesses} trials left."
			def one_letter?(input)
				#input = gets.chomp
				until input.length == 1
					#puts "Please enter a single letter!"
					#input = gets.chomp
					false
				end
			end

		
			def word_has?(input)
				flag=false
				for i in (0..(target.size - 1)) do
					if input == target[i]
						hidden_array[i] = target[i]
						flag = true
						true
					end
				end
			end

			

			#puts hidden_array.join("")
		end

		def won?
			if number_of_guesses != 0 && target == hidden_array
				true
				#puts "You won!!"
			else
				false
				#puts "You lost!"
			end
		end

		def stuff_you_do_when_fail(flag)
			if flag == false
				puts "NOPE, try again!"
				number_of_guesses -= 1
				guessed_letters << input
			end
		end

		
	end

	
end #Class
