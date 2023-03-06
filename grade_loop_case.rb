# frozen_string_literal: true

# Maggie is a school teacher who wants to assign grades to her students
# based on their performance in a test. She wants to write a Ruby program
# to do this automatically based on their test score.If a student gets a
# score between 90 and 100, they get an A. If they get a score between
# 80 and 89, they get a B. If they get a score between 70 and 79,
# they get a C. If they get a score between 60 and 69,they get a D. If
# they get a score below 60, they get an F.Help Maggie write a Ruby program
# to solve this problem using a for loop and a case statement.
puts '---enter -1 for exiting the program instead of marks---'
puts 'enter marks: '
marks = gets.chomp.to_i

while marks != -1

  case marks
  when 90..100
    puts 'A'
  when 80..89
    puts 'B'
  when 70..79
    puts 'C'
  when 60..69
    puts 'D'
  when 0..59
    puts 'F'
  else
    puts 'invald input'
  end

  puts 'enter marks: '
  marks = gets.chomp.to_i
end
