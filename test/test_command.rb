# frozen_string_literal: true

require_relative 'helper'

class TestCommand < Minitest::Test
  def test_get_klass
    assert_equal PlaceCommand, Command.get_class(:place)
  end

  def test_name
    assert_equal :right, RightCommand.name
  end

  def test_alias
    assert_equal :R, RightCommand.alias
  end
end
