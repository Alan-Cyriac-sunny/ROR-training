# frozen_string_literal: true

# You are creating a program that determines if a number is positive, negative, or zero.
# Write a Ruby program that takes a number as input and outputs whether
# it is positive, negative, or zero.

puts 'enter an integer'
inte = gets.chomp

if inte =~ /^-?[0-9]+$/
  inte = inte.to_i
else
  puts 'Invalid input.'
  exit 1
end

if inte.positive?
  puts 'Positive'

elsif inte.negative?
  puts 'Negative'

else
  inte.zero?
  puts 'Its ZERO!!!'

end
