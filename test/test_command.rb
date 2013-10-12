require "test/unit"

require File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib', 'robot.rb'))

class TestCommand < Test::Unit::TestCase
  def setup
    @toy = Toy.new Board.new
  end

  def test_create
    assert_equal PlaceCommand, Command.create(@toy, "place", ["2", "2", "south"]).class
    assert_equal InvalidCommand, Command.create(@toy, "place", []).class

    assert_equal MoveCommand, Command.create(@toy, "move", []).class
    assert_equal LeftCommand, Command.create(@toy, "left", []).class
    assert_equal RightCommand, Command.create(@toy, "right", []).class
    assert_equal ReportCommand, Command.create(@toy, "report", []).class

  end
end