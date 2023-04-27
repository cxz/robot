# frozen_string_literal: true

requires = %w[session
              position
              orientation
              board
              toy
              command
              command_parser
              invalid_command
              left_command
              move_command
              place_command
              quit_command
              report_command
              right_command
              errors]

File.tap do |f|
  requires.each do |file|
    require f.expand_path(f.join(f.dirname(__FILE__), 'robot', file))
  end
end
