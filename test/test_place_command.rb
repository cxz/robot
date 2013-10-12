require "test/unit"

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'robot.rb'))

class TestPlace < Test::Unit::TestCase

  def setup
    @toy = Toy.new Board.new
  end

  def test_execute
    @cmd = PlaceCommand.new(@toy, Position.new(4,4), Orientation::NORTH)
    @cmd.execute
    assert @toy.position.is_valid?
    assert @toy.position = Position.new(4,4)
    assert @toy.direction = Orientation::NORTH
  end

  def test_place_within_board_only
    @cmd = PlaceCommand.new(@toy, Position.new(5, 0), Orientation::NORTH)
    @cmd.execute
    assert !@toy.position.is_valid?
  end

end