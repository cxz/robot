require "test/unit"

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'robot.rb'))

class TestOrientation < Test::Unit::TestCase

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