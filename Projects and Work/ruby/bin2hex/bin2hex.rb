# funktionen nibble_to_int tar ett 4-bitars binärt tal i strängform
# och omvandlar detta till motsvarande heltal (integer-värde)
# funktionen kommer returnera det motsvarande integer-värdet

def nibble_to_int( nibble_str )
  int_value =  nibble_str[3].to_i
  int_value += nibble_str[2].to_i * 2
  int_value += nibble_str[1].to_i * 4
  int_value += nibble_str[0].to_i * 8 
  return int_value
end

# HEX_DIGITS är en konstant variabel som används för att omvandla
# ett decimaltal (integer-värde) till motsvarande hexadecimala siffra
HEX_DIGITS = "0123456789ABCDEF"
hex = ""

print "Input binary: "
bin = gets.chomp
bin = bin.rjust(bin.length + 4 - (bin.length % 4), '0')
puts "Bin is #{bin}"
index = bin.length - 1

puts "\n/*Pre-conversion: \nindex: #{index}\nbin: #{bin}\n*/\n"
while index >= 0
  nibble = bin[index-3..index]
  hex_index = nibble_to_int(nibble)

  hex = HEX_DIGITS[hex_index] + hex

  index -= 4
end

puts "0x" + hex