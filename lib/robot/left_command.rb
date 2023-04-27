# frozen_string_literal: true

class LeftCommand < Command
  NAME = :left
  ALIAS = :L

  def execute
    return unless toy.within_board?

    toy.head(toy.direction.rotate_left)
  end
end
