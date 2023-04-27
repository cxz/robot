# frozen_string_literal: true

class RightCommand < Command
  NAME = :right
  ALIAS = :R

  def execute
    return unless toy.within_board?

    toy.head(toy.direction.rotate_right)
  end
end
