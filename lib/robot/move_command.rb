class MoveCommand < Command
  def execute
    return unless @toy.within_board?

    new_position = @toy.position + @toy.direction.unity_vector

    if @toy.board.contains?(new_position)
      @toy.position = new_position
    else
      raise InvalidCoordinateError.new("new_position: #{new_position}, board: #{@toy.board}")
    end
  end
end