print("Operand 1: ")
operand1 = gets.chomp.to_f
print("Operator [+, -, /, *]: ")
operator = gets.chomp
print("Operand 2: ")
operand2 = gets.chomp.to_f
  
result = 0

if(operator == "+")
  result = operand1 + operand2
elsif(operator == "-")
  result = operand1 - operand2
elsif(operator == "/")
  result = operand1 / operand2
elsif(operator == "*")
  result = operand1 * operand2
else
  puts "Invalid operator!"
  return
end

puts "#{operand1} #{operator} #{operand2} = #{result}"

#puts("Sum: #{operand1} #{operator} #{operand2} = #{operand1.send(operator, operand2)}") <- This wasn't allowed :(
