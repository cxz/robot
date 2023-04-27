# frozen_string_literal: true

require 'singleton'

class CommandParser
  def initialize(toy)
    @toy = toy
  end

  def parse(line)
    verb, params = parse_verb_and_parms(line)
    klass = Command.get_klass(verb)
    return InvalidCommand.new(toy) unless klass

    if verb == :place
      parse_place(params)
    else
      klass.new(toy)
    end
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
    orientation = Orientation.parse(params[2])
    return InvalidCommand.new(toy) unless orientation

    PlaceCommand.new(toy, position, orientation)
  end
end
