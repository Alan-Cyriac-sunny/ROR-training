# frozen_string_literal: true

# You need to keep track of the number of occurrences of each letter in a given string.
# Create a function that accepts a string and returns a hash
# where the keys are the unique letters in the string and the values are the number
# of occurrences of each letter.

puts 'enter a string '
str = gets.chomp
arr = str.split('')
arr = arr.uniq
c = 0
hsh = {}
arr.each do |a|
  c = str.count(a)
  hsh[a] = c
end

puts "letter count(\"#{str}\") # = > #{hsh}"
