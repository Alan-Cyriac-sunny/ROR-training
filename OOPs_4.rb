# frozen_string_literal: true

# Once upon a time, there was a programmer named Alice who was
# working on a new project in Ruby. She wanted to create a class
# to represent a bank account, with methods to deposit and withdraw
# money. She also wanted to initialize each account with a starting balance.

class BankAccount
  def initialize(balance = 0)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
    puts "Account balance: #{@balance}"
  end

  def withdraw(amount)
    @balance -= amount
    puts "Account balance: #{@balance}"
  end
end

customer = BankAccount.new(1000.00)
customer.deposit(100)
customer.withdraw(200)
