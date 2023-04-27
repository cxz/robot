# frozen_string_literal: true

class Session
  def initialize(width, height)
    @board = Board.new(width, height)
  end

  def start
    @toy = Toy.new(@board)
    @parser = CommandParser.new(@toy)

    self
  end

  def execute(instructions)
    instructions.each { |instruction| execute_single(instruction) }
  end

  def position
    toy.position
  end

  def direction
    toy.direction
  end

  private

  attr_reader :toy, :parser

  def execute_single(instruction)
    command = parser.parse(instruction)
    command.execute
  end
end
