class State < Country
  def initialize(attributes)
    attributes.each {|key, value| self.send("#{key}=", value)}
    @@states << self

  end
  @@states = []
  def self.all
    @@states
  end
end