sum = 0
sum = open("input.txt").readlines.map(&:to_i).reduce(:+)

puts "Total sum: #{sum}"