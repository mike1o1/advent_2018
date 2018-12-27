filename = "input.txt"
path = File.join(File.dirname(__FILE__), filename)

box_ids = open(path).map(&:chomp)

twice_count = 0
thrice_count = 0

box_ids.each do |box_id|
    group = box_id.chars.group_by { |c| c}

    has_twice_count = false
    has_thrice_count = false

    group.each do |key, value|
        if value.count == 2 && !has_twice_count
            twice_count += 1
            has_twice_count = true
        end

        if value.count == 3 && !has_thrice_count
            thrice_count += 1
            has_thrice_count = true
        end

        group[key] = value.count
    end
end

puts "twice count: #{twice_count}"
puts "thrice count: #{thrice_count}"

puts "checksum: #{twice_count * thrice_count}"
