# All the questions and answers-related logic belongs to the Questions class.

class Questions
  attr_writer :input

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  # def generate_number
  # end

  def print_question
    puts "#{current_player}: What does #{number1} plus #{number2} equal?"
    print "> "
  end

  @input = $stdin.gets.chomp

  def correct?
    if @input == @answer
      Turns.new
    else @current_player.wrong_answer
    end
  end
end