# frozen_string_literal: true

class QuitCommand < Command
  def execute
    exit 0
  end
end
