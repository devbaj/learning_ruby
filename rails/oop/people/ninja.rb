require_relative "./human"

class Ninja < Human
  def initialize
    super
    @stealth = 175
    self
  end

  def steal target
    self.attack target
    @health += 10
    self
  end

  def get_away
    @health -= 15
  end
end

# dummy = Human.new
# naruto = Ninja.new
# naruto.steal(dummy)
# naruto.get_away

# puts dummy.health
# puts naruto.health