require './game'
require './player'
require './question'



puts "Player 1, Enter Your Name: "
p1 = gets.chomp.to_s
puts "Player 2, Enter Your Name: "
p2 = gets.chomp.to_s

player1 = Player.new(p1)
player2 = Player.new(p2)

game = Game.new(player1, player2)

while game.players[0].lives > 0 and game.players[1].lives > 0 do #while alive, play game
  puts "~~~New Round~~~"
  question = Question.new
  puts "#{game.current_player.name}'s Answer: #{question.basic_question}" #player naeeds game. since current player is not defined within the scope like question is
  answer = question.answer
  input = gets.chomp.to_i

  if (input == answer)
    puts "Noish"
  elsif (input != answer)
    game.subtract_life
  end

  game.report_life

  game.change_player

end