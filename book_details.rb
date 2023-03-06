# frozen_string_literal: true

# Mike has a list of books that he wants to keep track of. He wants to store the name,
# author, and year of publication for each book in a hash. He also wants to be able
# to search for a book by its name and update its year of publication.Help Mike write
# a Ruby program to solve this problem using hash operations.

book_details = [
  { name: 'A Better India; A Better World', author: 'Narayana Murthy', yop: nil },
  { name: 'A Passage to India', author: 'E.M. Foster', yop: nil },
  { name: 'A Revenue Stamp', author: 'Amrita Pritam', yop: nil },
  { name: 'Death of a City', author: 'Amrita Pritam', yop: nil },
  { name: 'Pinjar Amrita', author: 'Pritam', yop: nil },
  { name: 'A Suitable Boy', author: 'Vikram Seth', yop: nil },
  { name: 'A Tale of Two Cities', author: 'Charles Darwin', yop: nil },
  { name: 'Oliver Twist', author: 'Charles Darwin', yop: nil },
  { name: 'David Copperfield', author: 'Charles Darwin', yop: nil },
  { name: 'Oliver Twist', author: 'Charles Darwin', yop: nil },
  { name: 'Origin of Species', author: 'Charles Darwin', yop: nil },
  { name: 'A Week with Gandhi', author: 'Louis Fisher', yop: nil }
]

loop do
  puts 'enter book name'
  book_name = gets.chomp
  choice1 = choice2 = 0
  flag = 0

  book_details.each do |book|
    next unless book[:name].downcase == book_name.downcase

    flag = 1
    puts "book found. \n do you want to update the year of publication \nchoose [1/0]"
    choice1 = gets.chomp.to_i

    if choice1 == 1
      puts 'enter year of publication'
      year = gets.chomp.to_i
      book[:yop] = year
      puts "updated record \n#{book}"
    elsif flag.zero?
      puts 'book not found.'
    end
    break
  end
  puts "\n do you want to continue in the application \nchoose [1/0]"
  choice2 = gets.chomp.to_i
  exit 1 if choice2.zero?
end
