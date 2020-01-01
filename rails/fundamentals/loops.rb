#practice with loops

#while loops
i = 0
num = 5
while i < num do
  puts "Inside the loop i = #{i}"
  i += 1
  break if i == 2
end

#for loops
for i in 0..5
  next if i == 2
  puts "Value of local variable is #{i}"
  # break if i == 2
end