def add(a, b)
    result = a.to_i + b.to_i
    return result

end

def sub(a, b)
    result = a.to_i - b.to_i
    return result
end

def div(a, b)
    result = a.to_i / b.to_i 
    return result
end

def mul(a, b)
    result = a.to_i * b.to_i
    return result
end

def main() # Main-funktion, start av program
    puts("Addition (+)")
    puts("Subtraktion (-)")
    puts("Division (-)")
    puts("Multiplikation (x eller *)\n\n")

    print("Operand 1: ")
    operand1 = gets.to_i
    print("Vilken operator? (+-/x*): ")
    m = gets.chomp
    print("Operand 2: ")
    operand2 = gets.to_i

    if m == "+"
        puts("Svar: #{add(operand1, operand2)}")
    elsif m == "-"
        puts("Svar: #{sub(operand1, operand2)}")
    elsif m == "/"
        puts("Svar: #{div(operand1, operand2)}")
    elsif m == "x" || m == "*"
        puts("Svar: #{mul(operand1, operand2)}")
    else
        puts("Error")
    end
end

main()