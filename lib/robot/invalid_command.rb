class InvalidCommand < Command
  def execute
    puts "Invalid command. Use 'quit' to exit."
  end
end