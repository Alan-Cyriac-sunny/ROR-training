puts "enter a number"
number = gets.chomp.to_i
if (number==1)
	puts "neither prime nor composite"
	exit 1
end

i=2
while(i<=number/2)
	if(number % i==0)
		break
	end
	i = i+1
end

if(i>number/2)
	puts "prime"
	
else
	puts "not prime"
end
