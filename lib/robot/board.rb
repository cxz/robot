class Board
  SIZE = 5
  def contains? position
    position.is_valid? and position.x >= 0 and position.x < SIZE and position.y >= 0 and position.y < SIZE
  end
end
