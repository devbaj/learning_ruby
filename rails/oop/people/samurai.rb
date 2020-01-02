require_relative "./human"

class Samurai < Human
  @@num_of_samurai = 0

  def initialize
    super
    @health = 200
    @@num_of_samurai += 1
    self
  end

  def deeath_blow target
    target.health = 0
    self
  end

  def meditate
    @health = 200
    self
  end

  def self.how_many
    puts "There are #{@@num_of_samurai} samurai"
  end

end

# kohaku = Samurai.new
# kinro = Samurai.new

# kohaku.deeath_blow kinro
# puts kinro.health

# kinro.meditate
# puts kinro.health

# Samurai.how_many