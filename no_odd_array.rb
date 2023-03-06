# frozen_string_literal: true

puts 'enter the no of array elements'
size = gets.chomp.to_i
i = temp = 0
arr = new_arr = []
puts 'enter elements'

while i < size
  temp = gets.chomp.to_i
  arr.push(temp)
  new_arr.push(temp) if temp.even?
  i += 1
end

puts "new array is: #{new_arr}"
