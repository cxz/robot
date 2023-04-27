# frozen_string_literal: true

class Orientation
  attr_reader :unity_vector, :name, :short_name

  def initialize(name, short_name, unity_vector)
    @name = name.downcase.to_s
    @short_name = short_name.to_s
    @unity_vector = unity_vector
  end

  NORTH = Orientation.new(:north, :N, Position.new(0, 1))
  EAST = Orientation.new(:east, :E, Position.new(1, 0))
  SOUTH = Orientation.new(:south, :S, Position.new(0, -1))
  WEST = Orientation.new(:west, :W, Position.new(-1, 0))

  CLOCKWISE = [NORTH, EAST, SOUTH, WEST].freeze

  def self.parse(name)
    CLOCKWISE.find { |d| d.name == name&.downcase&.to_s || d.short_name == name.to_s }
  end

  def rotate_right
    CLOCKWISE[(to_i + 1) % CLOCKWISE.length]
  end

  def rotate_left
    CLOCKWISE[(to_i - 1) % CLOCKWISE.length]
  end

  def to_s
    name
  end

  def to_i
    CLOCKWISE.index { |d| d.name == name }
  end

  def ==(other)
    name == other.to_s and unity_vector == other.unity_vector
  end
end
