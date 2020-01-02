puts "I am in the human file"
require_relative "mammal"
class Human < Mammal
  def subclass_method
    breath
  end
  def another_method
    self.eat
  end

  def explicitly_speak
    self.speak
  end

  def implicitly_speak
    speak
  end

  def explicitly_cry
    self.cry
  end

  def implicitly_cry
    cry
  end
end

human = Human.new
human.implicitly_cry