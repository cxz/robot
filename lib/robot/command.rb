class Command

  def initialize(toy)
    @toy = toy
  end

  def self.create(toy, verb, params)
    begin
      case verb
      when /\Aplace\z/i
        position = Position.new(params[0], params[1])
        direction = Orientation.parse(params[2]) || raise
        PlaceCommand.new(toy, position, direction)
      when /\Amove\z/i
        MoveCommand.new(toy)
      when /\Aleft\z/i
        LeftCommand.new(toy)
      when /\Aright\z/i
        RightCommand.new(toy)
      when /\Areport\z/i
        ReportCommand.new(toy)
      when /\Aquit\z/i
        QuitCommand.new(toy)
      else
        InvalidCommand.new(toy)
      end
    rescue
      InvalidCommand.new(toy)
    end

  end
end



