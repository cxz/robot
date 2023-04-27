# frozen_string_literal: true

require_relative 'helper'

class TestCommand < Minitest::Test
  def setup
    @toy = Toy.new Board.new
  end
end
