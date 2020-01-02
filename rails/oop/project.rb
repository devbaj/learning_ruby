class Project
  attr_accessor :name, :desc

  def initialize name, desc
    @name = name
    @desc = desc
  end

  def elevator_pitch
    puts "#{@name}, #{@desc}"
  end

end

proj1 = Project.new("YagaKimi Season 2", "We gotta adapt chapter 44")
puts proj1.name
proj1.elevator_pitch