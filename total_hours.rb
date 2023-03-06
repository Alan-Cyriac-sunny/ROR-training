# frozen_string_literal: true

# A company wants to keep track of the number of hours worked by each of its employees.
# The employee data is stored in a hash, where each key is the employee name and the
# value is the number of hours worked.
# The company wants to find out the total number of hours worked by all employees.

max = 0
employee_data = {

  'Alice' => 40,

  'Bob' => 30,

  'Charlie' => 45,

  'Dave' => 35

}

arr = employee_data.values
puts "The total number of hours worked by all employees is #{arr.sum}"
