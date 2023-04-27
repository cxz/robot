# frozen_string_literal: true

require_relative 'helper'

class TestRightCommand < Minitest::Test
  def setup
    @toy = Toy.new(Board.new)
    @command = RightCommand.new(@toy)
  end

  def test_execute
    @toy.move(Position.new(0, 0))
    @toy.head(Orientation::NORTH)

    @command.execute

    assert_equal [0, 0], [@toy.position.coord_y, @toy.position.coord_y]
    assert_equal Orientation::EAST, @toy.direction
  end
end
