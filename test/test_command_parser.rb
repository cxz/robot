# frozen_string_literal: true

require_relative 'helper'

class TestCommandParser < Minitest::Test
  def setup
    @toy = Toy.new(Board.new)
    @command_parser = CommandParser.new(@toy)
  end

  def test_place
    assert_equal 'place 2, 2, south', parse('place 2, 2, south').to_s
    assert_equal 'invalid', parse('place').to_s
  end

  def test_parse
    %w[move left right report quit].each do |line|
      assert_equal line, parse(line).to_s
    end
  end

  def parse(input)
    @command_parser.parse(input)
  end
end
