class MoveCommand < Command
  def execute
    return unless @toy.within_board?
    new_position = case @toy.direction
      when Direction.east
        Position.new(@toy.position.x + 1, @toy.position.y)
      when Direction.north
        Position.new(@toy.position.x, @toy.position.y + 1)
      when Direction.west
        Position.new(@toy.position.x - 1, @toy.position.y)
      when Direction.south
        Position.new(@toy.position.x, @toy.position.y - 1)
    end
    if @toy.board.contains? new_position
      @toy.position = new_position
    end
  end
end