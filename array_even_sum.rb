puts "enter the no of array elements"
size = gets.chomp.to_i
i = 0
temp=0
arr = []
sum=0
puts "enter elements"

while(i<size)
	temp = gets.chomp.to_i
	if(temp%2 ==0)
		sum=sum+temp
	end
	arr.push(temp)
	i+=1
end

puts "sum of the even numbers is: #{sum}"

