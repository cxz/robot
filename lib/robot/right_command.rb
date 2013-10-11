class RightCommand < Command
  def execute
    @toy.direction = @toy.direction.rotate_right if @toy.within_board?
  end
end