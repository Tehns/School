puts "[1] Rock"
puts "[2] Paper"
puts "[3] Scissors"

Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
playing = true

while playing
  player_points = 0
  opponent_points = 0
  i = 3;

  while i > 0
    print "I choose: "
    player_choice = gets.chomp.to_i

    opponent_choice = rand(3)+1 # Gets a number between 1-3
    
    if player_choice == 1
      if(opponent_choice == 1)
        puts "You both chose rock (Tied)"
      elsif(opponent_choice == 2)
        puts "You chose rock and the computer chose paper (1 point to the computer)"
        opponent_points += 1
      elsif(opponent_choice == 3)
        puts "You chose rock and the computer chose scissors (1 point to you)"
        player_points += 1
      end

    elsif player_choice == 2
      if(opponent_choice == 1)
        puts "You chose paper and the computer chose rock (1 point to you)"
        player_points += 1
      elsif(opponent_choice == 2)
        puts "You both chose paper (Tied)"
      elsif(opponent_choice == 3)
        puts "You chose paper and the computer chose scissors (1 point to the computer)"
        opponent_points += 1
      end
      
    elsif player_choice == 3
      if(opponent_choice == 1)
        puts "You chose scissors and the computer chose rock (1 point to the computer)"
        opponent_points += 1
      elsif(opponent_choice == 2)
        puts "You chose scissors and the computer chose paper (1 point to you)"
        player_points += 1
      elsif(opponent_choice == 3)
        puts "You both chose scissors (Tied)"
      end
    else
      puts "Invalid input, the opponent gets a point!" 
      opponent_points += 1     
    end

    i -= 1
  end

 

  if(player_points > opponent_points)
    puts "You won! Wanna play again? (y/n)"
    if(gets.chomp == "y")
      playing = true
    else
      playing = false
    end

  elsif(player_points < opponent_points)
    puts "You lost! Wanna play again? (y/n)"
    if(gets.chomp == "y")
      playing = true
    else
      playing = false
    end
  else
    puts "You Tied! Wanna play again? (y/n)"
    if(gets.chomp == "y")
      playing = true
    else
      playing = false
    end
  end
end 