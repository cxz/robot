# frozen_string_literal: true

class ReportCommand < Command
  NAME = :report

  def execute
    if @toy.within_board?
      puts "#{@toy.position.coord_x}, #{@toy.position.coord_y}, #{@toy.direction}"
    else
      puts 'not within board'
    end
  end
end
