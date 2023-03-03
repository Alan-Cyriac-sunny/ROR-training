# A company wants to track the performance of its employees based on their sales data. 
# The sales data is given in the form of an array of hashes, where each hash represents 
# the sales data forone employee. Each hash has the following
# keys: name, sales_target, actual_sales, and commission_rate. The company wants to 
# calculate the following statistics:
# 	1.The total sales for each employee (actual sales + commission).
# 	2.The percentage of sales achieved by each employee (actual sales / sales target * 100).
# 	3.The names of the employees who did not meet their sales target.
# Write a program in Ruby that takes the sales data array and outputs a 
# new array of hashes with the following keys: name, total_sales, sales_percentage, 
# and target_met. The target_metkey should be trueif the employee met their sales target, 
# and false otherwise.

sales = [{:name => "Alice", :sales_target => 20, :actual_sales => 22, :commission_rate => 5 },
		 {:name => "Bob", :sales_target =>25, :actual_sales => 29, :commission_rate => 7 },
		 {:name => "John", :sales_target => 18, :actual_sales => 20, :commission_rate => 7 },
		 {:name => "Jane", :sales_target => 18,  :actual_sales => 16, :commission_rate => 6 },
		 {:name => "Rob", :sales_target => 22, :actual_sales => 21, :commission_rate => 8 },
		 {:name => "Don", :sales_target => 25, :actual_sales => 27, :commission_rate => 9 },
		 {:name => "Sam", :sales_target => 19, :actual_sales => 19, :commission_rate => 7 }
]
puts "n---------------------\n"
sales.each do |emp|
	puts "#{emp[:name]}\t #{emp[:sales_target]}\t
		  #{emp[:actual_sales]}\t #{emp[:commission_rate]}"
end

emp_performance = []

sales.each do |emp|
	emp_name = emp[:name]
	total_sales = emp[:actual_sales]
	sales_percentage = total_sales*100/emp[:sales_target]
	if (sales_percentage >= 100)
		target_met = true
	else
		target_met = false
	end
	emp_performance.push({:name => emp_name, :total_sales => total_sales,
						  :sales_percentage => sales_percentage, :target_met => target_met})
end

emp_performance.each do |employee|
	puts "#{employee[:name]}\t #{employee[:total_sales]}\t
		  #{employee[:sales_percentage]}\t #{employee[:target_met]}"
end
