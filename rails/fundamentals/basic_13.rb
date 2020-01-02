# print 1-255
for i in 1..255
  puts i
end

# print odd numbers 1-255
for i in 1..255
  unless i % 2 == 0
    puts i
  end
end

# print numbers 0-255 along with sum so far
sum = 0
for i in 0..255
  sum += i
  puts "New number: #{i} Sum: #{sum}"
end

# iterate through array
a = [1,3,5,7,9,13]
a.each { |i| puts i }

# find max
b = [-3,-5,-7]
c = [0,-13,-27]
d = [0,5,12,24,-45,-36]
puts a.max
puts b.max
puts c.max
puts d.max

# get average
puts a.sum.to_f / a.count

# create array with odd numbers 1-255
x = []
for i in 1..255
  x.push (i) unless i % 2 == 0
end
puts x.to_s

# get number of values greater than Y
def greater y, arr
  puts arr.count { |i| i > y }
end
greater 100, x

# square values
def square arr
  arr.map { |i| i*i }
end
puts square a

# eliminate negative numbers
def remove_negatives arr
  arr.map { |i| i < 0 ? 0 : i }
end
puts remove_negatives c

# max min avg
def min_max_avg arr
  results = Hash.new
  results["min"] = arr.min
  results["max"] = arr.max
  results["avg"] = ( arr.sum.to_f / arr.count )
  return results
end
puts min_max_avg c


# shift values in array
def shift arr
  arr.shift
  arr.push(0)
end
puts (shift d).to_s

# num to string
def num_to_string arr
  arr.map { |i| i < 0 ? "Dojo" : i }
end
puts num_to_string c