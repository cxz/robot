# frozen_string_literal: true

class Command
  def initialize(toy, _params = nil)
    @toy = toy
  end

  def to_s
    self.class.to_s.gsub(/Command/, '').downcase
  end

  private

  attr_reader :toy
end
