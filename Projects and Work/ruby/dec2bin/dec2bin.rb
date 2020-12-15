print 'Insert decimal numbers: '
dec = gets.to_i
bin = ""
pow = 1

while dec > 0
  rest = dec % (2 ** pow)
    if(rest > 0)
      bin = '1' + bin
    else
      bin = '0' + bin
    end
  dec -= rest
  pow += 1
end

puts bin