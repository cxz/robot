class Board
  def initialize(right=5, top=5)
    @width = [right, 0].max
    @height = [top, 0].max
  end

  def contains?(position)
    position.is_valid? and position.x >= 0 and position.x <= @width and position.y >= 0 and position.y <= @height
  end

  def to_s
    "[#{@width},#{@height}]"
  end
end
