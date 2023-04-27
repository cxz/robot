# frozen_string_literal: true

class InvalidCommand < Command
  NAME = :invalid

  def execute
    puts "Invalid command. Use 'quit' to exit."
  end
end
