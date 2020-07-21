# Here goes the game flow, including commencing and ending the game session, as well as changing the turns.

class Game
  def initialize
    puts "Please enter the first player's name"
    player_name = ask_for_input
    @player1 = Players.new "#{player_name}"

    puts "Please enter the second player's name"
    player_name = ask_for_input
    @player2 = Players.new "#{player_name}"
    
    @winner = false
    @current_player = @player1
  end

  def start
    while !@winner
      puts "----- NEW TURN -----"

      question = Questions.new
      puts "#{@current_player}: #{question.prompt}"
      answer = ask_for_input
      
      if question.correct?(answer)
        puts "#{@current_player}: YES! You are correct."
      else
        puts "#{@current_player}: Close but no cigar. This was a wrong answer."
        @current_player.reduce_lives
      end

      puts "#{@player1}: #{@player1.lives}/3 vs #{@player2}: #{@player2.lives}/3"
      change_player
      winner?
    end
    end_game
  end

  def change_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def winner?
    if @player1.dead?
      @winner = @player2
    elsif @player2.dead?
      @winner = @player1
    end
  end

  def end_game
    if @player1.dead? || @player2.dead?
      puts "#{@winner} wins with a score of #{@winner.lives}/3"
      puts "----- GAME OVER -----"
    end
  end
end

def ask_for_input
  print "> "
  input = $stdin.gets.chomp
end