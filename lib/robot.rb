requires = [
  'session',
  'position.rb',
  'orientation.rb',
  'board.rb',
  'toy.rb',
  'command.rb',
  'command_parser.rb',
  'player.rb',
  'invalid_command.rb',
  'left_command.rb',
  'move_command.rb',
  'place_command.rb',
  'quit_command.rb',
  'report_command.rb',
  'right_command.rb'
]

File.tap do |f|
  requires.each do |file|
    require  f.expand_path(f.join(f.dirname(__FILE__), 'robot', file))
  end
end
