# frozen_string_literal: true

puts 'enter the no of strings'
size = gets.chomp.to_i
i = 0
temp = 0
arr = []
new_arr = []
sum = 0
puts 'enter strings'

while i < size
  temp = gets.chomp
  arr.push(temp)
  new_arr.push(temp) unless temp.index('a').nil?
  i += 1
end
puts "given array is: #{arr}"
puts "new array is: #{new_arr}"
