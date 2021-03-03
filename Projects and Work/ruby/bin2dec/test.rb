print "Input bin: "
bin = gets.chomp # Ta in binärt värde
dec = 0 # Värdet för dec
pow = 0 # Värder för exponentsiffran
index = bin.length-1

while index >= 0 
    dec += bin[index].to_i * 2 ** pow
    pow += 1
    index -= 1
end

puts dec 