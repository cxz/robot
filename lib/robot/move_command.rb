class MoveCommand < Command
  def execute
    return unless @toy.within_board?
    new_position = @toy.position + @toy.direction.unity_vector
    @toy.position = new_position if @toy.board.contains? new_position
  end
end