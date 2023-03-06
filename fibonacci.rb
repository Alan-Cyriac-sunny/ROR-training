# frozen_string_literal: true

puts 'enter a number'
number = gets.chomp.to_i
i = 3
temp1 = 0
temp2 = 1
puts "fibonacci series up to term #{number}"
if number == 1
  puts '0'

else
  (number > 1)
  print "0\n1\n"
  while i <= number
    temp2 = temp1 + temp2
    temp1 = temp2 - temp1
    puts temp2.to_s
    i += 1
  end
end
