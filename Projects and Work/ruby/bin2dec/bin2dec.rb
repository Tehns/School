bin = ARGV[0]

puts "Binary: #{bin}"

if(bin.match?(/[^0-1]/))
    puts "Invalid input! (0 and 1 only)"
    return
else
    dec = 0
    pow = 0
    index = bin.length-1

    while index >= 0
        dec += bin[index].to_i * 2**pow
        pow += 1
        index -= 1
    end

    puts dec
end
