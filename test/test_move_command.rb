# frozen_string_literal: true

require_relative 'helper'

class TestMove < Minitest::Test
  def setup
    @toy = Toy.new Board.new(5, 5)
    @cmd = MoveCommand.new(@toy)
  end

  def test_execute
    @toy.position = Position.new(0, 0)
    @toy.direction = Orientation::NORTH

    @cmd.execute

    assert_equal Position.new(0, 1), @toy.position
  end

  def test_move_within_board
    @toy.position = Position.new(0, 4)
    @toy.direction = Orientation::NORTH

    @cmd.execute

    assert_equal Position.new(0, 5), @toy.position
  end
end
