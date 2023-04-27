class PlaceCommand < Command
  def initialize(toy, position, orientation)
    @toy = toy
    @position = position
    @direction = orientation
  end

  def execute
    if @toy.board.contains?(@position)
      @toy.position = @position
      @toy.direction = @direction
    else
      raise InvalidCoordinateError.new("position: #{@position}, board: #{@toy.board}")
    end
  end

  def to_s
    "place #{@position.x}, #{@position.y}, #{@direction}"
  end
end
