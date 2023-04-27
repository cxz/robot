# frozen_string_literal: true

class Toy
  attr_reader :position, :direction, :board

  def initialize(board)
    @board = board
    @position = InvalidPosition.new(nil, nil)
    @direction = Orientation::NORTH
  end

  def move(new_position)
    @position = new_position
  end

  def head(direction)
    @direction = direction
  end

  def within_board?
    board.contains?(position)
  end

  def to_s
    "direction: #{direction} position: #{position} board: #{board}"
  end
end
