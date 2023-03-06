# frozen_string_literal: true

# You are creating a program that calculates the discount for a customer's purchase.
# If a customer spends over $100, they receive a 10% discount. If they spend over
# $50 but less than or equal to $100, they receive a 5% discount. If they spend less
# than or equal to $50, they do not receive a discount. Write a Ruby program that takes
# the customer's purchase amount as input and outputs their discount amount.

puts 'enter the purchase amount'
amt = gets.chomp.to_f

if amt > 50 && amt < 101
  amt -= amt * 5 / 100
elsif amt > 100
  amt -= amt * 1 / 10
end

puts "amount payable : $#{amt}"
