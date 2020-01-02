def test
  puts "You are in the method"
  yield
  puts "You are back in the method"
  yield
end
test { puts "You are in the block" }

def test
  yield 5
  puts "You are int he method test"
  yield 100
end
test { |i| puts "You are in the block #{i}"}