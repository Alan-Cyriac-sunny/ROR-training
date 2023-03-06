# frozen_string_literal: true

# A company has two types of employees: regular employees and managers.
# All employees have a name and a salary, but managers also have a bonus
# percentage that is added to their salary.Write a program that creates
# two classes, Employee and Manager, where Manager inherits from Employee.
# The Employee class should have methods to get and set the name and salary,
# and the Manager class should have an additional method to get and set the
# bonus percentage.

class Employee
  def initialize(emp_name, salary, days)
    @emp_name = emp_name
    @salary = salary
    @days = days
  end

  def getDetails
    puts "name: #{@emp_name}"
    puts "salary: #{@salary}"
  end
end

class Manager < Employee
  def getDetails
    super
    getBonus
  end

  def getBonus
    @bonus = @salary / @days
    puts "Bonus is #{(@bonus / @salary * 100).round(1)}%"
  end
end

emp1 = Employee.new('emp', 50_000.00, 25)
emp1.getDetails
manager1 = Manager.new('mgr', 750_000.00, 30)
manager1.getDetails
