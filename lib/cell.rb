class Cell
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def filled_out?
    @value != 0
  end

end
