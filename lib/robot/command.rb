class Command

  def initialize(toy, params=nil)
    @toy = toy
  end

  def self.create(toy, verb, params)
    verb = verb.to_sym
    begin
      if [:place, :move, :left, :right, :report, :quit].include? verb
        klass = Object.const_get "#{verb.capitalize}Command"
        if params && params.length > 0
          cmd = klass.send(:parse, toy, params)
        else
          cmd = klass.send(:new, toy)
        end
      end
    rescue
      #any exception means an invalid command.
    end
    cmd ||= InvalidCommand.new(toy)
    cmd
  end

end



