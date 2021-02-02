
def nibble_to_int( nibble_str )
    int_value =  nibble_str[3].to_i * 1
    int_value += nibble_str[2].to_i * 2
    int_value += nibble_str[1].to_i * 4
    int_value += nibble_str[0].to_i * 8 
    return int_value
end

HEX_DIGITS = "0123456789ABCDEF"

bin = gets.chomp
bin = bin.rjust( bin.length + 4 - (bin.length % 4), '0' ) if ( bin.length % 4 ) > 0 
length = bin.length - 1

hex = ""
puts bin

while length >= 0
    nibble = bin[ (length - 3)..length ]
    hex_index = nibble_to_int(nibble)
    hex = HEX_DIGITS[hex_index] + hex
    length -= 4
end 


puts "0x#{hex}"
#index -= 4
#nibble = bin[ (index - 3)..index ]
#hex_index = nibble_to_int( nibble )

#Iputs HEX_DIGITS[ hex_index ]