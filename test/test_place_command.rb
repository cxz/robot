# frozen_string_literal: true

require_relative 'helper'

class TestPlace < Minitest::Test
  def setup
    @toy = Toy.new Board.new(4, 4)
  end

  def test_execute
    @cmd = PlaceCommand.new(@toy, Position.new(4, 4), Orientation::NORTH)
    @cmd.execute

    assert_predicate @toy.position, :valid?
    assert @toy.position = Position.new(4, 4)
    assert @toy.direction = Orientation::NORTH
  end

  def test_raise_error
    @cmd = PlaceCommand.new(@toy, Position.new(5, 0), Orientation::NORTH)
    assert_raises(InvalidCoordinateError) { @cmd.execute }
  end
end
