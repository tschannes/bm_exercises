class PiglatinConverter

  def self.convert(word)
    if word[0] =~ /[aeiou]/
      word
    else
      word = word[1..-1] + word[0] + "ay"
    end
    word.downcase
  end

  def self.converter(words)
    words.split(" ").collect {|word| self.convert(word) }.join(" ")
  end

end