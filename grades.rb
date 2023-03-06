# frozen_string_literal: true

puts 'enter the no of grades to be stored'
size = gets.chomp.to_i
i = 0
temp = 0
arr = []
sum = 0
puts 'enter grades'

while i < size
  temp = gets.chomp.to_i
  arr.push(temp)
  i += 1
end
i = 0
arr = arr.sort
arr.shift
arr.pop
arr.each { |a| sum += a }
puts "average grade is: #{sum / (size - 2).to_f}"
