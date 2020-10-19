playing = true
guesses = 3

while(playing)
  puts "Difficulties:\n1. Easy (1-10)"
  puts '2. Medium (1-50)'
  puts '3. Hard (1-100)'
  print '> '

  difficulty = gets.to_i
  max = 0

  if(difficulty == 1)
    max = 10
  elsif(difficulty == 2)
    max = 50
  elsif(difficulty == 3)
    max = 100
  else
    puts 'Invalid input!'
  end

  answer = rand(max)+1
  while(guesses > 0)
    print "Input a number between 0 and #{max}: "
    guess = gets.to_i

    if guess == answer
      guesses = 0
      puts 'Correct! Want to play again?'      
    elsif guess < answer
      guesses -= 1
      puts 'Too low!'
    elsif guess > answer
      guesses -= 1
      puts 'Too high!'
    end
  end

  puts 'Play again? (y/n): ' 
  again = gets.chomp

  if(again == 'y')
    playing = true
  else
    playing = false
  end
end


