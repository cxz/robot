class Orientation

  attr_reader :unity_vector
  attr_reader :name

  def initialize(name, unity_vector)
    @name = name.downcase.to_s
    @unity_vector = unity_vector
  end

  NORTH = Orientation.new(:north, Position.new(0, 1))
  EAST = Orientation.new(:east, Position.new(1, 0))
  SOUTH = Orientation.new(:south, Position.new(0, -1))
  WEST = Orientation.new(:west, Position.new(-1, 0))

  CLOCKWISE = [NORTH, EAST, SOUTH, WEST]


  def self.parse(name)
    CLOCKWISE.select{ |d| d.to_s == name.downcase }.fetch(0, nil)
  end

  def rotate_right
    CLOCKWISE[ (self.to_i + 1) % CLOCKWISE.length]
  end

  def rotate_left
    CLOCKWISE[ (self.to_i - 1) % CLOCKWISE.length]
  end

  def to_s
    @name
  end

  def to_i
    CLOCKWISE.index{ |d| d.name == @name }
  end

  def ==(other)
    @name == other.to_s and @unity_vector == other.unity_vector
  end

end