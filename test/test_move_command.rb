require_relative 'helper'

class TestMove < Minitest::Test

  def setup
    @toy = Toy.new Board.new
    @toy.position = Position.new(0,0)
    @toy.direction = Orientation::NORTH
    @cmd = MoveCommand.new(@toy)
  end

  def test_execute
    @cmd.execute
    assert_equal Position.new(0,1), @toy.position
  end

  def test_move_within_board
    @toy.position = Position.new(0, 4)
    @cmd.execute
    assert_equal Position.new(0, 4), @toy.position
  end
end