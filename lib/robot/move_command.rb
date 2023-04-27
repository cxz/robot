# frozen_string_literal: true

class MoveCommand < Command
  NAME = :move
  ALIAS = :M

  def execute
    return unless @toy.within_board?

    new_position = @toy.position + @toy.direction.unity_vector

    unless @toy.board.contains?(new_position)
      raise InvalidCoordinateError, "new_position: #{new_position}, board: #{@toy.board}"
    end

    @toy.position = new_position
  end
end
