require "./player"
require "./question"
require "./turn"

player_1 = Player.new("Player 1")
player_2 = Player.new("Player 2")

current_player = player_1

while player_1.lives > 0 && player_2.lives > 0
  
  question_1 = Question.new

  Turn.new("#{current_player.name}: #{question_1.question}")

  if gets.chomp.to_i == question_1.answer
    puts "Correct!"
  else
    puts "No!"
    current_player.lives -= 1
  end

  puts "P1: #{player_1.lives}/3 vs P2: #{player_2.lives}/3"

  if current_player == player_2
    current_player = player_1
  else
    current_player = player_2
  end

end

puts "----- GAME OVER -----"

if player_1.lives == 0
  puts "Player 2 wins with a score of #{player_2.lives}/3"
else
  puts "Player 1 wins with a score of #{player_1.lives}/3"
end
