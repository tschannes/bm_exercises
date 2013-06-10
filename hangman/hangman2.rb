class Hangman
	LIST = ["canada"]#, "england", "australia", "japan"]
  attr_accessor :word, :chances, :board, :list, :guesses, :answer, :string

  class InvalidGuessException < Exception
    
  end

  def initialize()
    @string = ""
    @chances = 8
    @guesses = []
    @word    = LIST.sample
    @board   = draw_board
  end

  def guess(letter)
    if valid_guess?(letter)    
      if word_has?(letter)
        put_letter_on_board(letter)
        puts "method guess is being called"
      else
        wrong_letter(letter) if !@guesses.include? letter
      end
    end
  end

  def put_letter_on_board(letter)
      i = 0
    (@word.length).times do
      @board[i] = letter if @word[i] == letter
      i += 1
    end
  end

  def draw_board
      '_' * @word.length
  end

  

  def lost?
    @chances == 0
  end

  def win?
    !@board.include? '_'
  end

  

  # decrement # of chances and add letter to guesses
  def wrong_letter(letter)
    #puts"wrong_letter being called"
    @guesses << letter
    @chances -= 1
  end

  # return true if word has letter
  def word_has?(letter)
    @word.include?(letter)
  end

  def valid_guess?(guess)
    if guess.is_a? String
      guess.length == 1
    else
      raise InvalidGuessException.new("Invalid Guess!")
    end
  end


  def guesses
    @guesses.join(", ")
  end
  
end