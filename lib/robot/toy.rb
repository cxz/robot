# frozen_string_literal: true

class Toy
  attr_accessor :position, :direction
  attr_reader :board

  def initialize(board)
    @board = board
    @position = InvalidPosition.new(nil, nil)
    @direction = Orientation::NORTH
  end

  def within_board?
    @board.contains? @position
  end

  def to_s
    "direction: #{@direction} position: #{@position} board: #{@board}"
  end
end
