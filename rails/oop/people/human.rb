class Human
  attr_accessor :strength, :intelligence, :stealth, :health

  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end

  def attack target, damage
    puts target.class.ancestors
    if target.class.ancestors.include? Human
      puts "Target is human"
      target.health -= damage
    else
      puts "Target is not human"
    end
    self
  end

end

rossiu = Human.new
simon = Human.new
puts "Simon: #{simon.health}, Rossiu: #{rossiu.health}"
simon.attack(rossiu, 10)
puts "Simon: #{simon.health}, Rossiu: #{rossiu.health}"