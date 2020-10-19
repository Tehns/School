print("Username: ")
username = gets.chomp
print("Password: ")
password = gets.chomp

if(username == "Oliver" && password == "Cheese")
  puts "Login sucessful!"
else
  puts "Login failed, wrong password or username!"
end