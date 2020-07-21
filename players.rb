# Both players use the same Players class, which has them start at 3 lives.

class Players
  attr_reader :lives

  def initialize
    @lives = 3
  end

  def dead?
    if @lives = 0
  end
end