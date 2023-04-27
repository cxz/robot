# frozen_string_literal: true

class Command
  class << self
    def inherited(base)
      @registry ||= []
      @registry << base
    end

    def get_klass(name)
      @klass_cache ||= {}
      @klass_cache[name] ||=
        @registry.find do |klass|
          klass.const_get(:NAME) == name || (klass.const_defined?(:ALIAS) && klass.const_get(:ALIAS) == name)
        end
    end
  end

  def initialize(toy, _params = nil)
    @toy = toy
  end

  def to_s
    self.class.to_s.gsub(/Command/, '').downcase
  end

  private

  attr_reader :toy
end
