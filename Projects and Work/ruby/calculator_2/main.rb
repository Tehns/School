#
# Less simple calculator made for an assignment.
# 

def validOp(op)
  if(op == '+' || op == '-' || op == '/' || op == '*')
    return true
  else
    return false
  end
end

puts "Possible operators:\r\nAddition (+)\r\nSubtraction (-)\r\nDivision (/)\r\nMultiplication (*)"
print 'Operand 1: '
operand1 = gets.to_f
print "Operator 1: "
operator1 = gets.chomp
print "Operand 2: "
operand2 = gets.to_f
print "Operator 2: "
operator2 = gets.chomp
print "Operand 3: "
operand3 = gets.to_f

if(validOp(operator1) && validOp(operator2))
  puts "#{operand1} #{operator1} #{operand2} #{operator2} #{operand3} = #{operand1.send(operator1, operand2).send(operator2, operand3) }"
else
  puts 'Invalid Operator(s)!'
end 