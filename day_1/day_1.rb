path = File.join(File.dirname(__FILE__), "input.txt")
sum = open(path).readlines.map(&:to_i).reduce(:+)

puts "Total sum: #{sum}"