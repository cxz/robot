# frozen_string_literal: true

class QuitCommand < Command
  NAME = :quit

  def execute
    exit 0
  end
end
