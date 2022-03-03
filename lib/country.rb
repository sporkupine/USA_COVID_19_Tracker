class Country
  attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries
  @@Countries = []

  def self.all
    @@Countries
  end

  def initialize(attributes)
    attributes.each {|key, value| self.send("#{key}=", value)}

  end
end