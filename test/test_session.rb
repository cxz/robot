# frozen_string_literal: true

require_relative 'helper'

class TestSession < Minitest::Test
  def setup
    @session = Session.new(5, 5).start
  end

  def test_basic
    @session.execute(['place 2,2,north', 'move'])

    assert_equal [2, 3], [@session.position.coord_x, @session.position.coord_y]
    assert_equal Orientation::NORTH, @session.direction
  end

  def test_example1
    @session.execute(['place 1,2,north', 'left', 'move', 'left', 'move', 'left', 'move', 'left', 'move', 'move'])

    assert_equal [1, 3], [@session.position.coord_x, @session.position.coord_y]
    assert_equal Orientation::NORTH, @session.direction
  end

  def test_example2
    @session.execute(['place 3,3,east', 'move', 'move', 'right', 'move', 'move', 'right', 'move', 'right', 'right',
                      'move'])

    assert_equal [5, 1], [@session.position.coord_x, @session.position.coord_y]
    assert_equal Orientation::EAST, @session.direction
  end
end
