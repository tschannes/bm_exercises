require_relative 'piglatin.rb'

print "enter word: "
word = gets.chomp
until word == 'quit'.downcase
  puts "translated: #{ PiglatinConverter.converter(word) }"
  print "enter another word or 'quit' to exit: "
  word = gets.chomp
end