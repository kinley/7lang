require_relative "ruby_csv.rb"

csv = RubyCsv.new
puts csv.headers.inspect
puts csv.rows.inspect
csv.each {|row| puts row.first_name}