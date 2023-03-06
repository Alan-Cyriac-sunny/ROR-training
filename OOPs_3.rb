# frozen_string_literal: true

# A bookstore wants to keep track of their inventory. Each book has
# a title, author, and price. Create a Book class that can store this
# information, as well as a Bookstore class that can add books to its
# inventory, display the entire inventory, and calculate the total
# value of the inventory.

class Book
  def initialize(title, author, price)
    @title = title
    @author = author
    @price = price
  end

  attr_reader :title, :author, :price
end

class BookStore
  def initialize
    @inventory = []
  end

  def add_book(book)
    @inventory.push(book)
  end

  def display_inventory
    @inventory.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}, Price: #{book.price}"
    end
  end

  def calculate_total_value
    total_value = 0
    @inventory.each do |book|
      total_value += book.price
    end
    total_value
  end
end

book1 = Book.new('The Great Gatsby', 'F. Scott Fitzgerald', 799.99)
book2 = Book.new('To Kill a Mockingbird', 'Harper Lee', 998.89)
store = BookStore.new
store.add_book(book1)
store.add_book(book2)
store.display_inventory
puts "Total value of inventory: ₹#{store.calculate_total_value}"
