class Position
  attr_reader :x
  attr_reader :y

  def initialize(x, y)
    @x = x.to_i
    @y = y.to_i
  end

  def to_s
    "[#{@x}, #{@y}]"
  end

  def is_valid?
    true
  end

  def ==(other)
    @x == other.x and @y == other.y
  end
end

class InvalidPosition < Position
  def initialize
  end

  def is_valid?
    false
  end
end