# frozen_string_literal: true

class Board
  def initialize(right = 5, top = 5)
    @width = [right, 0].max
    @height = [top, 0].max
  end

  def contains?(position)
    position.valid? &&
      position.coord_x >= 0 && position.coord_x <= width &&
      position.coord_y >= 0 && position.coord_y <= height
  end

  def to_s
    "[#{width},#{height}]"
  end

  private

  attr_reader :width, :height
end
