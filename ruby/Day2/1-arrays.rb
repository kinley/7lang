a = (1..16).to_a
a.each_slice(4) { |arr| puts arr.to_s }