# You are creating a program that calculates the total cost of a customer's order. 
# The cost of an item is $10. If a customer orders 10 or more items, they receive 
# a 10% discount on their entire order. Write a Ruby program that takes the number 
# of items the customer is ordering as input and outputs their total cost. 

puts "enter no of items"
items = gets.chomp.to_i
price = items*10

if items>9
	price = price - price * 1/10
end

puts "amount payable : $#{price}"