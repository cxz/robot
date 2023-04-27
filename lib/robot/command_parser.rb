# frozen_string_literal: true

class CommandParser
  def initialize(toy)
    @toy = toy
  end

  def parse(line)
    verb, params = parse_verb_and_parms(line)
    raise unless %i[place move left right report quit].include?(verb)

    if verb == :place
      parse_place(params)
    else
      klass = Object.const_get "#{verb.capitalize}Command"
      klass.new(toy)
    end
  rescue StandardError
    InvalidCommand.new(toy)
  end

  private

  attr_reader :toy

  def parse_verb_and_parms(line)
    verb, *params = line.chomp.strip.split(/\s/)
    params = (params || []).join(' ').split(/,/).collect { |i| i.strip.gsub(/,/, '') }
    [verb.to_sym, params]
  end

  def parse_place(params)
    position = Position.new(params[0], params[1])
    orientation = Orientation.parse(params[2]) || raise
    PlaceCommand.new(toy, position, orientation)
  end
end
