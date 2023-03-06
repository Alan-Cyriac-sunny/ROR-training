# frozen_string_literal: true

# You are creating a program that determines if a person is eligible to vote in a particular election.
# In order to vote, a person must be at least 18 years old and a citizen of the country in which the
# election is taking place. Write a Ruby program that takes a person's age and citizenship status as
#  input and outputs whether they are eligible to vote

puts 'enter the country which the election is held'
country = gets.chomp
puts 'enter your age: '
age = gets.chomp.to_i
puts "are you a citizen of #{country} [y/n]: "
sts = gets.chomp
sts = sts.downcase

if age > 17
  if sts == 'y'
    puts 'you are eligible to vote'

  else
    puts 'you are not eligible to vote'
  end
else
  puts 'you are not eligible to vote'
end
