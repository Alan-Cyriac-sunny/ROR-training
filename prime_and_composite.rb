puts "enter a number"
number = gets.chomp.to_i

if (number==1)
	puts "neither prime nor composite"
end

i=2
while(i>number/2)
	if(number % i==0)
		break
	end
	i = i-1
end

if(i>number/2)
	puts "composite"
	
else
	puts "prime"
end
