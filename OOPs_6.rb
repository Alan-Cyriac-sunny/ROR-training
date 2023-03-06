# frozen_string_literal: true

# Suppose you are designing a class called "BankAccount" in Ruby that
# has the following attributes and behaviors:
# Attributes:
# •balance (float)
# •account_number (string)
# Behaviors:
# •deposit(amount) -adds the amount to the balance
# •withdraw(amount) -subtracts the amount from the balance
# •display_balance -prints the current balance
# •account_info -prints the account number and current balance
# You want to make sure that the balance and account number are only accessible
# within the class, and that the deposit and withdraw methods can only be called by
# objects of the class.

class BankAccount
  protected

  def initialize(account_number = 0, balance = 0.00)
    @account_number = account_number
    @balance = balance
    display_balence
  end

  private

  def display_balence
    puts "Balance: #{@balance}"
  end

  def acc_details
    puts "Account Number: #{@account_number}"
    puts "Balance: #{@balance}"
  end

  public

  def deposit(amount)
    @balance += amount
    puts '-----Depositing-----'
    display_balence
  end

  def withdraw(amount)
    @balance -= amount
    puts '-----Withdrwraing-----'
    display_balence
  end
end

customer1 = BankAccount.new(0o001, 1000.00)
customer1.withdraw(100)
customer1.deposit(2000)
