

print 'What is your name? '
username = gets.chomp

if username.downcase == ENV['USERNAME'].downcase
  puts "Yes, your name is #{username}"
elsif username.downcase != ENV['USERNAME'].downcase
  puts "No, your name is #{ENV['USERNAME']}"
end


