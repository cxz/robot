class ReportCommand < Command
  def execute
    if @toy.within_board?
      puts "#{@toy.position.x}, #{@toy.position.y}, #{@toy.direction}"
    else
      puts "not within board"
    end
  end
end