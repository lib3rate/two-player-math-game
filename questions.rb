# All the questions and answers-related logic belongs to the Questions class.

class Questions
  attr_writer :input

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @correct_answer = @number1 + @number2
  end

  def prompt
    "What does #{@number1} plus #{@number2} equal?"
  end

  def correct?(player_answer)
    if player_answer.to_i == @correct_answer
      true
    else
      false
    end
  end
end