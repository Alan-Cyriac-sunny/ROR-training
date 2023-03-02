# You have a list of usernames and passwords stored in a hash in your Ruby program. 
# You need to create a login function that accepts a username and password as parameters and 
# checks if they match the values in the hash. If the username and password are valid, 
# the function should return "Login Successful". 
# Otherwise, it should return "Invalid username or password".


users = { 

  "user1" => "pass1", 

  "user2" => "pass2", 

  "user3" => "pass3" 

} 
puts "enter username: "
user_name = gets.chomp
puts "enter password: "
password = gets.chomp

if (users.has_key?(user_name))
  if (users[user_name] == password)
    puts "login successfull"

  else
    puts "Invalid username or password"
  end

else
  puts "Invalid username or password"
end
