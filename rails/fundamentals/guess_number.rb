#assignment "Guess the Number"

def guess_number guess
  number = 25
  if guess == number
    puts "Correct!"
  elsif guess > number
    puts "Your guess is too high"
  else
    puts "Your guess is too low"
  end
end

guess_number 20
guess_number 30
guess_number 25
