# The Turns class has the functionality to change the answering player and control if the game is over.

class Turns
  attr_reader :current_player

  def initialize
    @current_player = "#{player1}"
  end

  def start
    Questions.print_question
  end

  def end_game
    if player1.dead? || player2puts.dead?
      
    end
  end

  private

  def change_player_turn
    if @current_player = player1
      @current_player = player2
    else
      @current_player = player1
    end
  end
end