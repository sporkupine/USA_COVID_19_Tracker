class State < Country
  def initialize(attributes)
    super

  end
  @@states = []
  def self.all
    @@states
  end
end