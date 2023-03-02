# You are creating a program that calculates a student's 
# letter grade based on their numerical grade. If a student's 
# numerical grade is between 90 and 100, they receive an A. If 
# their grade is between 80 and 89, they receive a B. If their 
# grade is between 70 and 79, they receive a C. If their grade is 
# between 60 and 69, they receive a D. If their grade is below 60,
# they receive an F. Write a Ruby program that takes a student's 
# numerical grade as input and outputs their letter grade. puts "enter the marks"


mark = gets.chomp

if (mark =~ /^[0-9]+$/)
    mark = mark.to_i

    if mark > 0 && mark < 100
        
    else
        puts "Invalid input."
        exit 1
    end

else
    puts "Invalid input."
    exit 1
end


if mark >= 90
    puts "A"

elsif mark >= 80
    puts "B"

elsif mark >= 70
    puts "C"

elsif mark >= 60
    puts "D"
    
else
    puts "F"
end
