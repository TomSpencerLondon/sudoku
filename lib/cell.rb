class Cell
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def filled_out?
    @value != 0
  end

  def assume(value)
    @value = value
  end

end
