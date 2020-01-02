require_relative "./human"

class Wizard < Human
  def initialize
    super
    @health = 50
    @intelligence = 25
    self
  end

  def heal
    @health += 10
    self
  end

  def fireball target
    self.attack target, 20
    self
  end

end

# dummy = Human.new
# leafa = Wizard.new
# leafa.heal
# leafa.fireball(dummy)

# puts "Dummy health: #{dummy.health}"
# puts "Wizard health: #{leafa.health}"