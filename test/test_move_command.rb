# frozen_string_literal: true

require_relative 'helper'

class TestMove < Minitest::Test
  def setup
    @toy = Toy.new Board.new(5, 5)
    @cmd = MoveCommand.new(@toy)
  end

  def test_execute
    @toy.move(Position.new(0, 0))
    @toy.head(Orientation::NORTH)

    @cmd.execute

    assert_equal Position.new(0, 1), @toy.position
  end

  def test_move_within_board
    @toy.move(Position.new(0, 4))
    @toy.head(Orientation::NORTH)

    @cmd.execute

    assert_equal Position.new(0, 5), @toy.position
  end
end
