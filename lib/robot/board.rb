class Board
  SIZE = 5
  def contains? position
    position.is_valid? and position.x >= 0 and position.x <= 4 and position.y >= 0 and position.y <= 4
  end
end