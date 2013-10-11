class PlaceCommand < Command
  def initialize(toy, position, direction)
    super(toy)
    @position = position
    @direction = direction
  end

  def execute
    if @toy.board.contains? @position
      @toy.position = @position
      @toy.direction = @direction
    end
  end
end