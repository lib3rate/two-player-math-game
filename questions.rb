# All the questions and answers-related logic belongs to the Questions class.

class Questions
  attr_writer :input

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def print_question
    puts "#{@current_player}: What does #{@number1} plus #{@number2} equal?"
  end

  def ask_for_input
    print "> "
    @input = $stdin.gets.chomp
  end

  def correct?
    if @input == @answer
      puts "#{@current_player}: YES! You are correct."
      Turns.new
    else 
      puts "#{@current_player}: Close but no cigar. This was a wrong answer."
      Turns.new
    end
  end
end