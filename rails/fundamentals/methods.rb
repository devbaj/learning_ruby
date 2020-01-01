def hello_world
  puts "hello world"
end

hello_world

def say_hello name1, name2
  "hello #{name1} and #{name2}"
end
puts say_hello "chika", "miko"

def say_hello_with_defaults name1="tanjiro", name2="zenitsu"
  puts "hello #{name1} and #{name2}"
end
say_hello_with_defaults "chika"

def say_hello_conditional name1, name2
  if name1.empty? or name2.empty?
    return "Who are you?"
  end
  "hello #{name1} and #{name2}"
end
puts say_hello_conditional "chika", ""