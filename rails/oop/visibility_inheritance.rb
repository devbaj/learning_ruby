# * public
class Mammal
  def breath
    puts "Inhale and exhale"
  end

  def eat
    puts "Yum yum yum"
  end
end

class Human < Mammal
  def subclass_method
    breath
  end
  def another_method
    self.eat
  end
end
# person = Human.new
# person.subclass_method
# person.another_method

# * protected
class Mammal
  def calling_speak
    speak
  end

  protected
    def speak
      puts "I am a protected method"
    end
end

class Human < Mammal
  def explicitly_speak
    self.speak
  end

  def implicitly_speak
    speak
  end
end
# mammal = Mammal.new
# # mammal.speak
# mammal.calling_speak
# person = Human.new
# # person.speak
# person.explicitly_speak
# person.implicitly_speak

# * private
class Mammal
  def calling_cry
    cry
  end

  private
    def cry
      puts "sniff sniff..."
    end
end

class Human < Mammal
  def explicitly_cry
    self.cry
  end

  def implicitly_cry
    cry
  end
end

mammal = Mammal.new
mammal.calling_cry
# mammal.cry
person = Human.new
# person.cry
# person.explicitly_cry
person.implicitly_cry