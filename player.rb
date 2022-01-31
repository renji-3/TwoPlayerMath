class Player
  attr_accessor :name, :lives #name doesnt need to be changed but bc this is a simple game ill leave it

  def initialize(name)
    @name = name #each players instance variable name is equivalent to their 'parameter' name
    @lives = 3
  end
end