# frozen_string_literal: true

require_relative 'helper'

class TestReportCommand < Minitest::Test
  def setup
    @toy = Toy.new(Board.new)
    @command = ReportCommand.new(@toy)
  end

  def test_execute
    @toy.move(Position.new(1, 1))
    @toy.head(Orientation::NORTH)

    out, _err = capture_io do
      @command.execute
    end

    assert_equal('1, 1, north', out.chomp)
  end
end
