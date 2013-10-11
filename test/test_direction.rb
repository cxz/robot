require "test/unit"

require '../lib/robot'

class TestDirection < Test::Unit::TestCase

  def test_rotate_right
    assert_equal Direction.east, Direction.north.rotate_right
    assert_equal Direction.south, Direction.east.rotate_right
    assert_equal Direction.west, Direction.south.rotate_right
    assert_equal Direction.north, Direction.west.rotate_right
  end

  def test_is_valid?
    assert Direction.parse('north')
    assert Direction.parse('NORTH')
    assert !Direction.parse('')
  end
end