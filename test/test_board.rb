require_relative 'helper'

class TestBoard < Minitest::Test
  def setup
    @board = Board.new
  end
  def test_contains
    assert_equal true,  (@board.contains? Position.new(0,0))
    assert_equal true,  (@board.contains? Position.new(4,4))
    assert_equal false, (@board.contains? Position.new(0,5))
    assert_equal false, (@board.contains? Position.new(5,0))
  end
end