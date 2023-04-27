# frozen_string_literal: true

class Command
  class << self
    def inherited(base)
      super

      @registry ||= []
      @registry << base
    end

    def get_klass(name)
      @klass_cache ||= {}
      @klass_cache[name] ||= @registry.find { |klass| [klass.name, klass.alias].include?(name) }
    end

    def name
      const_get(:NAME)
    end

    def alias
      const_get(:ALIAS) if const_defined?(:ALIAS)
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
