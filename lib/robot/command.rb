class Command

  def initialize(toy, params=nil)
    @toy = toy
  end

  def to_s
    self.class.to_s.gsub(/Command/, '').downcase
  end
end