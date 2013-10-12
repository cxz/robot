class Toy

  attr_accessor :position
  attr_accessor :direction
  attr_reader :board

  def initialize(board)
    @board = board
    @position = InvalidPosition.new
    @direction = Orientation::NORTH
  end

  def within_board?
    @board.contains? @position
  end

  def to_s
    puts "direction: #{@direction} position: #{@position} board: #{@board}"
  end
end

