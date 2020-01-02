# * Assignment: Ruby Puzzles

def problem_1
  a = [3,5,1,2,7,9,8,13,25,32]
  puts a.sum
  a.find_all { |i| i > 10 }
end
# puts problem_1

def problem_2
  a = %w[John KB Oliver Cory Matthew Christopher]
  a.shuffle!
  puts a
  return a.find_all { |i| i.length > 5 }
end
# puts problem_2

def problem_3
  a = ('a'..'z').to_a
  a.shuffle!
  puts a.last
  puts a.first
  vowels = %w[a e i o u]
  puts "It's a vowel!" if vowels.include?(a.first)
  puts "It might be a vowel..." if a.first == "y"
end
# problem_3

def problem_4
  a = Array.new(10) { rand(55..100) }
end
# puts problem_4

def problem_5
  a = problem_4
  a.sort!
  puts a.to_s
  puts a.max
  puts a.min
end
# problem_5

def problem_6
  a = ""
  for i in 1..5
    a.concat((65+rand(26)).chr)
  end
  return a
end
# puts problem_6

def problem_7
  a = Array.new
  for i in 1..10
    a.push(problem_6)
  end
  return a
end
# puts problem_7