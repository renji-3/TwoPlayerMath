require './player'

class Game # Game class has all these abilities

  attr_accessor :players, :current_player, :report_life

  def initialize (p1, p2) # create new game with 2 players
    @players = [p1, p2]
    @current_index = 0
    @current_player = @players[@current_index] # determines turn
  end

  def subtract_life
    @current_player.lives -= 1
    if @current_player.lives == 0
      puts "#{@current_player.name}, you lose!" 
      puts "--- GAME OVER ---"
    end
  end

  def report_life
    puts "Life Remaining ==> P1: #{@players[0].life}/3  P2:#{@players[1].life}/3"
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else 
      @current_player = @players[0]
    end
  end # if current player is p1, make p2, otherwise make p1

end
