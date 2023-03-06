# frozen_string_literal: true

# Alice is collecting data on the ages of the members of her local book club.
# She has created an array called ages that contains the following
# values: [28, 35, 42, 51, 39, 44, 32, 48, 29, 36].
# Alice wants to find the average age of the members of her book club.
# What is the average age of the book club members?

sum = 0
ages = [28, 35, 42, 51, 39, 44, 32, 48, 29, 36]
ages.each do |age|
  sum += age
end
puts "The sum of age of the book club members is #{sum}"
puts "The average age of the book club members is #{ages.sum / ages.length}"
