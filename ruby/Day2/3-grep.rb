word = "hello"
count = 0
File.open('input.txt').each do |line|
  count += 1
  puts "#{count}: #{line}" if line.index(word)
end