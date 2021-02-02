# encoding: utf-8

Encoding.default_internal = Encoding::UTF_8
Encoding.default_external = Encoding::UTF_8

HEX_DIGITS = "0123456789ABCDEF"

def help()
    puts "\nUSAGE:"
    puts "      converter.rb [ -? | --bin2dec [binary] | "
    puts "                --bin2hex [binary] | --dec2bin [decimal] ]"         
    puts "\n        Options:"
    puts "          -?, --help              Displays this help message"
    puts "          --bin2dec               Converts binary to decimal"
    puts "          --bin2hex               Converts binary to hexadecimal"
    puts "          --dec2bin               Converts decimal to binary"
    puts "          --dec2hex               Converts decimal to hexadecimal"
    puts "          --hex2bin               Converts hexadecimal to binary"
    exit(0)
end

def nibble_to_int( nibble_str )
    int_value =  nibble_str[3].to_i
    int_value += nibble_str[2].to_i * 2
    int_value += nibble_str[1].to_i * 4
    int_value += nibble_str[0].to_i * 8 
    return int_value
  end

def bin2hex(bin)
  hex = ""
  
  bin = bin.rjust(bin.length + 4 - (bin.length % 4), '0')
  index = bin.length - 1
  
  while index >= 0
    nibble = bin[index-3..index]
    hex_index = nibble_to_int(nibble)
  
    hex = HEX_DIGITS[hex_index] + hex
  
    index -= 4
  end
  
  puts  "#{bin}₂ = 0x#{hex}"
  return hex
end

def bin2dec(bin)

    bin = ARGV[1]
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
    
        puts "#{bin}₂ = #{dec}₁₀"
        return dec
    end
    
end

def dec2hex(dec)

    value = dec.to_i
    
    hex = ""
    pow = 1
    digits = "0123456789ABCDEF"

    while value > 0
        rest = value % (16 ** pow)
        value -= rest
        hex = digits[ rest / ( 16 ** ( pow - 1 )) ] + hex
        pow += 1
    end

    if hex == ""
        hex = "0"
    end

    puts "#{dec}₁₀ = 0x#{hex}"
    return hex
end

def hex2bin( hex )
    # detta är en så kallad hash-tabell, en slags lista/array med nyckel-värde-par
    hex_to_nibble = {   "0"=>"0000", "1"=>"0001", "2"=>"0010", "3"=>"0011",
                        "4"=>"0100", "5"=>"0101", "6"=>"0110", "7"=>"0111",
                        "8"=>"1000", "9"=>"1001", "A"=>"1010", "B"=>"1011",
                        "C"=>"1100", "D"=>"1101", "E"=>"1110", "F"=>"1111" }
    bin = ""
    index = 0
    while index < hex.length                    # behandla strängen från vänster till höger
        bin += hex_to_nibble[hex[index]]        # hex-siffra används som "index" (nyckel) i hash-tabell
        index += 1                              # inkrementerade loop
    end
    return bin
end

def dec2bin(dec)

    decint = dec.to_i

    bin = ""
    pow = 1
    
    while decint > 0
        rest = decint % (2 ** pow)

        if(rest > 0)
          bin = '1' + bin
        else
          bin = '0' + bin
        end

        decint -= rest
        pow += 1
    end

    puts "#{dec}₁₀ = #{bin}₂"
    return bin
end

def main()
    if(ARGV.length <= 0)
        
        puts "ERROR: No arguments"
        help()
        return
    elsif(ARGV.length > 2)
        puts "ERROR: Too many arguments!"
        help()
        return
    end

    case ARGV[0]
    when "-?"
        help()
    when "--help"
        help()
    when "--bin2dec"
        bin2dec(ARGV[1])
    when "--bin2hex"
        bin2hex(ARGV[1])
    when "--dec2bin"
        dec2bin(ARGV[1])
    when "--dec2hex"
        dec2hex(ARGV[1])
    when "--hex2bin"
        hex2bin(ARGV[1])
    else
        puts "ERROR: Invalid argument!"
        help()
    end



        
end

main()