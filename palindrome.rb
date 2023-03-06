# frozen_string_literal: true

# You are creating a program that checks if a given word is a palindrome.
# A palindrome is a word that is spelled the same way forwards and backwards.
# For example, "racecar" is a palindrome. Write a Ruby program that takes a
# word as input, checks if it is a palindrome, and outputs the result.

puts 'enter a string'
str = gets.chomp
rev = str.reverse
if rev == str
  puts 'palindrome'
else
  puts 'not palindrome'
end
