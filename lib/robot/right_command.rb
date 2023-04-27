# frozen_string_literal: true

class RightCommand < Command
  NAME = :right
  ALIAS = :R

  def execute
    @toy.direction = @toy.direction.rotate_right if @toy.within_board?
  end
end
