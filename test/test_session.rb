require_relative 'helper'

class TestSession < Minitest::Test
  def setup
    @session = Session.new(5, 5).start
  end

  def test_basic
    @session.execute(["place 2,2,north", "move"])
    assert_equal 2, @session.position.x
    assert_equal 3, @session.position.y
    assert_equal Orientation::NORTH, @session.direction

    @session.execute(["move"])
    assert_equal 2, @session.position.x
    assert_equal 4, @session.position.y
    assert_equal Orientation::NORTH, @session.direction

    @session.execute(%w[right move])
    assert_equal 3, @session.position.x
    assert_equal 4, @session.position.y
    assert_equal Orientation::EAST, @session.direction
  end
end
