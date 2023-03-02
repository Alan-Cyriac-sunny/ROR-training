# You are creating a program that calculates the factorial of a given number.
# The factorial of a number is the product of all positive integers up to 
# and including that number. For example, the factorial of 5 is 5 * 4 * 3 * 2 * 1 = 120.
# Write a Ruby program that takes a number as input, calculates its factorial, and outputs the result. 

puts "enter a number"
num = gets.chomp.to_i
i = fact = 1

while(i<=num)
	fact *= i
	i+=1
end

puts "factorial of the given number is #{fact}"