puts "enter the country which the election is held"
country = gets.chomp
puts "enter your age: "
age = gets.chomp.to_i
puts "are you a citizen of #{country} [y/n]: "
sts = gets.chomp
sts=sts.downcase
if (age>17)
	if(sts == "y")
		puts "you are eligible to vote"

	else
		puts "you are not eligible to vote"
	end
else
	puts "you are not eligible to vote"
end

