playing = true

while playing
  system("clear") || system("cls")
  attempts = 6

  secret_number = rand(9999).to_s.rjust( 4, "0")

  puts "You have 6 attempts to break the 4-digit code."

  while attempts > 0
    print "Enter 4-digit code: "
    guess = gets.chomp

    cows = 0
    bulls = 0
    i = 0
    i2 = 3

    while i <= 3
      i2 = 3

      if(secret_number[i] == guess[i])
        bulls += 1
      else
        while i2 > 0
          if(secret_number[i] == guess[i2])
            cows += 1
          end
          i2-=1
        end
      end
      i+=1
    end

    #If you guess the right code or not
    if(bulls == 4)
      attempts = 0
    else
      attempts -= 1
    end

    puts "#{guess}     #{bulls}B#{cows}C     Remaining Attempts: #{attempts} "
    
  end

  if(bulls < 4)
    puts "No attempts left, game over!"
  else
    puts "You guessed correct!"
  end

  puts "Do you want to play again? ('y/n')"

  option = gets.chomp
  if(option == "y" || option == "Y")
    #Nothign do
  else
    playing = false
  end
end 