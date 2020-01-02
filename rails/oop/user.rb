class User

  attr_accessor :first_name, :last_name

  def initialize f_name, l_name
    @first_name = f_name
    @last_name = l_name
  end

  def full_name
    puts "I am #{@first_name} #{@last_name}"
  end

  def say_hello
    puts "Hello!"
  end

  def self.foo
    puts "This is a class method"
  end

end

kaguya = User.new "Kaguya", "Shinomiya"

kaguya.full_name
kaguya.say_hello

User.foo