a = []
a.class
h = a.to_h
h.class
h.to_a
h = {a: 1, b:2}
h.each { |key, val| puts "#{key}: #{val}" }