# Here goes the game flow, including commencing and ending the game session.

class Game
  def initialize
    @player1 = Players.new
    @player2 = Players.new
  end

  def start
    turn = Turns.new
    # puts "#{@current_player}"
    question = Questions.new
    question.print_question
    question.ask_for_input
    question.correct?
  end

  def winner?
    if @player1.dead?
      @winner = @player2
    elsif @player2.dead?
      @winner = @player1
  end

  def end_game
    if player1.dead? || player2puts.dead?
      puts "#{winner} wins with a score of #{}"
      puts "----- GAME OVER -----"
    end
  end
end