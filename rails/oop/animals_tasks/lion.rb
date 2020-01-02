require_relative "./mammal"

class Lion < Mammal
  def initialize
    super 170
  end

  def fly
    @health -= 10
    self
  end

  def attack_town
    @health -= 50
    self
  end

  def eat_humans
    @health += 20
    self
  end

  def display_health
    puts "This is a lion"
    super
    self
  end
end

simba = Lion.new
for i in 1..3
  simba.attack_town
end
for i in 1..2
  simba.eat_humans
end

simba.display_health