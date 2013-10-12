class PlaceCommand < Command
  def initialize(toy, position, orientation)
    @toy = toy
    @position = position
    @direction = orientation
  end

  def execute
    if @toy.board.contains? @position
      @toy.position = @position
      @toy.direction = @direction
    end
  end

  def self.parse toy, params
    position = Position.new(params[0], params[1])
    orientation = Orientation.parse(params[2]) || raise
    PlaceCommand.new(toy, position, orientation)
  end
end