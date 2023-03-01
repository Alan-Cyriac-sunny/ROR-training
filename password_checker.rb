puts "enter a string"
password = gets
len = password.length
puts len

if(len>8)
	puts "password accepted"

else
	puts "not enough charecters"
end