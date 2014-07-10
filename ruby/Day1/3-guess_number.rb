max = 10;
number = rand(max)
puts "I have a secret number. Try to guess it! ;)"
is_right = false
guess = nil
while !is_right && guess != number do
  print "Enter a number: "
  guess = gets.strip
  begin
    guess = Integer(guess)
    case guess <=> number
    when -1
      puts "#{guess} is too low. Try again!"
    when 0
      puts "Got it! The answer is #{guess}"
      is_right = true
    when 1
      puts "#{guess} is too high. Try again!"
    end
  rescue
    puts "#{guess} is not a number"
  end
end
