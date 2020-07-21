# All the questions and answers-related logic belongs to the Questions class.

class Questions
  attr_writer :input

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def prompt
    "What does #{@number1} plus #{@number2} equal?"
  end

  def correct?(answer)
    if answer == @answer
      true
    else
      false
    end
  end
end