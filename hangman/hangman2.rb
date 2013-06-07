class Hangman
	LIST = ["canada", "england", "australia", "japan"]
  attr_accessor :word, :chances, :board, :list, :guesses, :answer, :string

  class InvalidGuessException < Exception
    
  end

  def initialize()
    @string = ""
    @chances = 8
    @guesses = []
    @word    = LIST.sample
    @board   = draw_board(@word)
  end

  # replace indexes of @board with letter where the same indexes of @word are letter
  # in other words, if @board is _ _ _ _ _ _ and @word is canada
  # and the letter guessed is a
  # then @board should become _ a _ a _ a
  def put_letter_on_board(letter)
    #board = string.split(" ")
    #word.split("").each_with_index do |letter_on_board, i|
     # puts "word is: #{word}"
      #if letter_on_board == letter
       # board[i] = word[i]
        #puts "board #{board[i]}, word #{word[i]}"
      #end
      #string = board.join(" ")
      #puts "This is board after a hit: #{board}!"
    #end
    #alternative
    #for i in (0..@word.length)
      puts "word is: " + @word
      (@word.length).times do
      @board[i] = letter if @word[i] == letter
    end
  end

  # return @guesses as a string
  def guesses
    @guesses.join(", ")
  end

  def test
    puts "it works"
  end

  # return true if @chances is 0, otherwise return false
  def lost?
    #if chances == 0 && board != word
     #   true
    #else
     #   false
    #end
    @chances == 0
  end

  # if the word has the given letter, put it on the board, otherwise, it's a wrong guess
  def guess(letter)
    raise InvalidGuessException.new("Invalid Guess!") unless valid_guess?(letter)
    
    if word_has?(letter)
      put_letter_on_board(letter)
      #puts "method guess is being called"
    else
      wrong_letter(letter) if !@guesses.include? letter
      #puts "method guess returns false"
    end
  end

  # return true if @board doesn't have a '_', otherwise return false
  def win?
    #if board.include? "_ "
     # false
    #else
     # true
    #end
    !@board.include? '_'
  end

  
  
  
  
  # return a string of underscores equal to length of the given word
  def draw_board(word)
    #(word.length).times do |i|
    # string << ("_ ")
      '_' * @word.length
    end
  end

  

  



  

  def valid_guess?(guess)
    guess.length == 1
  end

  # decrement # of chances and add letter to guesses
  def wrong_letter(letter)
    #puts"wrong_letter being called"
    @guesses << letter
    @chances -= 1
  end

  # return true if word has letter
  def word_has?(letter)
    #puts "#{word}"
    #word.each_char do |char| 
     #   false
      #if char == letter
       # puts "character is #{char}, letter is #{letter}"
        #true
      #end
    #end
    if @word.include?(letter)
  end
  
end