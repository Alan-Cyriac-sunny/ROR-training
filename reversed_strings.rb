puts "enter the no of strings"
size = gets.chomp.to_i
i = 0
temp=0
arr = []
new_arr = []
sum=0
puts "enter strings"

while(i<size)
	temp = gets.chomp
	arr.push(temp)
	new_arr.push(temp.reverse)
	i+=1
end
puts "entered array is: #{arr}"
puts "new array with reversed strings is: #{new_arr}"