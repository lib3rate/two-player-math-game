# The Turns class has the functionality to change the answering player and control if the game is over.

class Turns
  attr_reader :current_player

  def initialize
    @current_player = player1
  end

  def change_player_turn
    
  end

  def end_game
    puts
  end
end