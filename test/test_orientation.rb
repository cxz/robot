require_relative 'helper'

class TestOrientation < Minitest::Test

  def test_rotate_right
    assert_equal Orientation::EAST, Orientation::NORTH.rotate_right
    assert_equal Orientation::SOUTH, Orientation::EAST.rotate_right
    assert_equal Orientation::WEST, Orientation::SOUTH.rotate_right
    assert_equal Orientation::NORTH, Orientation::WEST.rotate_right
  end

  def test_is_valid?
    assert Orientation.parse('north')
    assert Orientation.parse('NORTH')
    assert !Orientation.parse('')
  end
end