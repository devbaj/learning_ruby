a = ["Chika", "Kaguya", "Maki", "Miko", "Tsubame"]
b = [5,6,9,3,1,2,4,7,8,10]
c = ["Maki", 9]

puts a[0]
puts a[4]
puts a+b

x = a + b
puts x.to_s

x = (a + b) - c
puts x.to_s

puts b.class

puts a.shuffle.join(", ")

a.delete("Maki")
puts a

puts "Length of a is #{a.length}"

a = %w{ryuuko satsuki mako nui ragyou}
puts a