x = "Coding Dojo"

puts x
puts x.length
puts x.class
puts x.upcase
puts x.downcase
puts x[2]
puts x.include?("dojo")
puts x.include?("Dojo")
puts "It includes the word \"Dojo\"" if x.include? "Dojo"

y = "chika, kaguya, miko, hayasaka"

puts y.split(",")

z = ""

puts "z is empty" if z.empty?