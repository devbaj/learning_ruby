class Fixnum
  def who_am_i
    puts self
  end
end
class String
  def who_am_i
    puts self
  end
end
4.who_am_i
14.who_am_i
"string".who_am_i
"hello world".who_am_i

class Mammal
  def initialize
    puts "I am alive"
  end

  def breath
    puts "Inhale and exhale"
  end

  def who_am_i
    puts self
    self
  end
end

my_mammal = Mammal.new
my_mammal.who_am_i
my_mammal.who_am_i.breath