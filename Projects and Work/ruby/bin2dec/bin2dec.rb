print "Insert binary: "
bin = gets.chomp

if(bin.match?(/[^0-1]/))
    return
else
    dec = 0
    pow = 0
    index = bin.length-1

    while index > -1
        dec += bin[index].to_i * 2**pow
        pow += 1
        index -= 1
    end
end
puts dec