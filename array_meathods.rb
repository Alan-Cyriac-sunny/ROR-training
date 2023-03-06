# frozen_string_literal: true

# John has a list of 10 numbers. He wants to find the sum of all numbers
# greater than 5 and also the index of the first number that is greater than 8.
# Help John write a Ruby program using the injectand each_with_indexmethods to
# solve this problem.

arr = [1, 20, 30, 5, 7, 9, 3]
result = []
arr.each do |element|
  result.push(element) if element > 5
end
puts "The sum of the elements greater than 5 is #{result.sum}"

arr.each_with_index do |num, indx|
  if num > 8
    puts indx.to_s
    break
  end
end
