# frozen_string_literal: true

class Position
  attr_reader :coord_x, :coord_y

  def initialize(coord_x, coord_y)
    @coord_x = coord_x.to_i
    @coord_y = coord_y.to_i
  end

  def to_s
    "[#{coord_x}, #{coord_y}]"
  end

  def valid?
    true
  end

  def ==(other)
    coord_x == other.coord_x and coord_y == other.coord_y
  end

  def +(other)
    Position.new(coord_x + other.coord_x, coord_y + other.coord_y)
  end
end

class InvalidPosition < Position
  def valid?
    false
  end
end
