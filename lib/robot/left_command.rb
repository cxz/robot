class LeftCommand < Command
  def execute
    @toy.direction = @toy.direction.rotate_left if @toy.within_board?
  end
end