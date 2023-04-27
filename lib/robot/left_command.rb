# frozen_string_literal: true

class LeftCommand < Command
  NAME = :left
  ALIAS = :L

  def execute
    @toy.direction = @toy.direction.rotate_left if @toy.within_board?
  end
end
