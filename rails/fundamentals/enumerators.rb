a = ["Chika", "Maki", "Kaguya"]
b = [5,6,9,2,4,10,27]

# .any?
puts [].any? #=> false
puts a.any? #=> true
puts a.any? (/d/) #=> false
puts a.any? { |word| word.length <= 3 } #=> false
puts a.any? { |word| word.length >= 3 } #=> true

# .each_entry
a.each_entry { |word| print word + "<3 "}
print "\n"

# .collect
puts b
puts b.map { |i| i*i }
puts a.collect { |word| word + " wants to..." }

# .detect & .find
puts a.find { |word| word == "Kaguya" }
puts a.find(-> {"Not present"}) { |word| word == "Shirogane" }

# .find_all
puts b.find_all { |i| i % 3 == 0 }

# .reject
puts b.reject { |i| i % 3 == 0 }

# .upto
5.upto(10) { |i| print i, " "}
print "\n"
12.upto(10) { |i| print i, " "}
print "\n"