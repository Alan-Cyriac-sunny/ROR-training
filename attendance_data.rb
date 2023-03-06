# frozen_string_literal: true

# A music festival wants to keep track of the number of people attending each of its stages.
# The attendance data is stored in an array of arrays, where each inner array contains the
# name of the stage and the number of people attending.
# The festival wants to find out which stage had the highest
# attendance and how many people attended that stage.

attendance_data = [

  ['Main Stage', 5000],

  ['Rock Stage', 3000],

  ['Dance Stage', 7000],

  ['Acoustic Stage', 2000]

]
indx = max = 0

attendance_data.each do |sub_arr|
  if max < sub_arr[1]
    max = sub_arr[1]
    indx = attendance_data.find_index(sub_arr)
  end
end

puts "#{attendance_data[indx][0]} had the highest attendance with #{attendance_data[indx][1]} people. "
