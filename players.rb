# Both players use the same Players class, which has them start at 3 lives.

class Players
  attr_reader :lives

  def initialize(name)
    @lives = 3
    @name = name
  end

  def to_s
    @name
  end

  def reduce_lives
    @lives -= 1
  end

  def dead?
    if @lives == 0
      true
    else
      false
    end
  end
end