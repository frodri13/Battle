class Player
  attr_reader :name, :hp
  
  LIFE = 60
  def initialize(name="Warrior")
    @name = name
    @hp = LIFE
  end

  def damage
    @hp -= 10
  end
end