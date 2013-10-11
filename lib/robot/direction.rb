class Direction
  attr_reader :name

  def initialize(name)
    @name = name.downcase
  end

  def self.north
    Direction.new('north').freeze
  end

  def self.south
    Direction.new('south').freeze
  end

  def self.west
    Direction.new('west').freeze
  end

  def self.east
    Direction.new('east').freeze
  end

  CLOCKWISE = [self.north, self.east, self.south, self.west]


  def self.parse(name)
    name = name.downcase
    idx = CLOCKWISE.index{ |d| d.name == name }
    if idx
      CLOCKWISE[idx]
    else
      nil
    end
  end

  def rotate_right
    CLOCKWISE[ (index(@name) + 1) % CLOCKWISE.length]
  end

  def rotate_left
    CLOCKWISE[ (index(@name) - 1) % CLOCKWISE.length]
  end

  def to_s
    @name
  end

  def ==(other)
    self.name == other.to_s
  end


  private

  def index(name)
    CLOCKWISE.index{ |d| d.name == name }
  end
end