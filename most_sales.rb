# frozen_string_literal: true

# A company wants to track the number of sales made by each of its salespeople.
# The sales data is stored in an array of hashes, where each hash contains the
# name of the salesperson and the number of sales made. The company wants to
# find out who made the most sales and how many sales they made.

max = 0
best_employee = ''
data = [
  { name: 'Alice', sales: 10 },
  { name: 'Bob', sales: 20 },
  { name: 'Charlie', sales: 100 },
  { name: 'Dave', sales: 25 }
]
data.each do |d|
  if max < d[:sales]
    max = d[:sales]
    best_employee = d[:name]
  end
end
puts "#{best_employee} made the most sales with #{max} sales."
