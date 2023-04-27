class Board
  DEFAULT_SIZE = 5

  def initialize(width=DEFAULT_SIZE, height=DEFAULT_SIZE)
    @width = width
    @height = height
  end

  def contains?(position)
    position.is_valid? and position.x >= 0 and position.x < @width and position.y >= 0 and position.y < @height
  end
end
