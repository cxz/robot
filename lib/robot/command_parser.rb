class CommandParser
  def initialize(toy)
    @toy = toy
  end

  def parse(line)
    verb, *params = line.chomp.strip.split(/\s/)
    params = (params || []).join(' ').split(/,/).collect{ |i| i.strip.gsub(/,/, "")}

    verb = verb.to_sym
    return InvalidCommand.new(toy) unless [:place, :move, :left, :right, :report, :quit].include?(verb)

    if verb == :place
      parse_place(params)
    else
      klass = Object.const_get "#{verb.capitalize}Command"
      klass.new(toy)
    end
  end

  private

  attr_reader :toy

  def parse_place(params)
    position = Position.new(params[0], params[1])
    orientation = Orientation.parse(params[2]) || raise
    PlaceCommand.new(toy, position, orientation)
  end
end
