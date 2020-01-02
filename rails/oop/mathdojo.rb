class MathDojo
  def initialize
    @total = 0
  end

  def add *params
    # puts "adding"
    params.each do |i|
      # puts "Class: #{i.class}"
      if i.respond_to?(:each)
        i.each { |j| @total += j}
      else
        @total += i
      end
    end
    self
  end

  def subtract *params
    # puts "subtracting"
    params.each do |i|
      # puts "Class: #{i.class}"
      if i.respond_to?(:each)
        i.each { |j| @total -= j }
      else
        @total -= i
      end
    end
    self
  end

  def result
    puts @total
    self
  end
end

challenge1 = MathDojo.new.add(2).add(2,5).subtract(3,2).result
challenge2 = MathDojo.new
  .add(1)
  .add([3, 5, 7, 8], [2, 4.3, 1.25])
  .subtract([2,3], [1.1, 2.3])
  .result

# def splatting *params
#   params
# end

# puts splatting(1).inspect
# puts splatting(1,2,3,4,5).inspect