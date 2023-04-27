# frozen_string_literal: true

require_relative 'helper'

class TestBoard < Minitest::Test
  def setup
    @board = Board.new(5, 5)
  end

  def test_contains
    assert(@board.contains?(Position.new(0, 0)))
    assert(@board.contains?(Position.new(5, 5)))
    refute(@board.contains?(Position.new(0, 6)))
    refute(@board.contains?(Position.new(6, 0)))
  end
end
