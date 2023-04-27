# frozen_string_literal: true

class PlaceCommand < Command
  NAME = :place

  def initialize(toy, position, orientation)
    super(toy)

    @position = position
    @direction = orientation
  end

  def execute
    raise InvalidCoordinateError, "position: #{position}, board: #{toy.board}" unless toy.board.contains?(position)

    toy.position = position
    toy.direction = direction
  end

  def to_s
    "place #{position.coord_x}, #{position.coord_y}, #{direction}"
  end

  private

  attr_reader :position, :direction
end
