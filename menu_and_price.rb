 # A restaurant has a list of menu items and their prices. The restaurant owner 
 # wants to print the menu to the console, along with the price of each item, and 
 # then calculate the total cost of a customer's order. Write a Ruby program to 
 # solve this problem.

 menu = {
    :item1 => 200,
    :item2 => 120,
    :item3 => 90,
    :item4 => 85,
    :item5 => 170,
    :item6 => 150
    }

total = 0
number_of_items = 0

puts " Item\tPrice\n"
puts "---------------"

menu.each do |key, value|
    puts " #{key}\t#{value}"
end

menu.each do |key, value|
    puts "enter the total number of #{key} purchased: "
    number_of_items = gets.chomp.to_i
    total = total + number_of_items * value
end

puts "the total payable amount is : #{total}"