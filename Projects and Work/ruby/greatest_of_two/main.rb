print "Enter first number: "
num1 = gets.to_i
print "Enter second number: "
num2 = gets.to_i

if(num1 > num2)
  puts("Number 1 is the largest, number 1 is #{num1} while number 2 is #{num2}")
elsif(num2 > num1)
    puts("Number 2 is the largest, number 2 is #{num2} while number 1 is #{num1}")
elsif(num1 = num2)
      puts("The numbers are equal")
end

