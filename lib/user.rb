class User
  attr_accessor :username, :password
  @@users = []

  def initialize(username, password)
    @username = username
    @password = password
    @@users << self
  end

  def self.all
    @@users
  end
  
  def self.seed
    [
      {username: "test", password: "password"},
      {username: "johndoe123", password: "password1"}
    ]
  end
end