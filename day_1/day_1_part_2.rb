variations = File.open("input.txt").readlines.map(&:to_i)

frequencies = {}

resulting_frequency = nil

current_frequency = 0

counter = 0

loop_count = 0

begin
    variation = variations[counter]

    change = current_frequency + variation

    current_frequency = change

    repeat = frequencies[change.to_s]

    if repeat.nil?
        frequencies[change.to_s] = change
    else
        duplicate = change
    end

    counter += 1

    if counter >= variations.length
        counter = 0
        loop_count += 1
    end

end while duplicate.nil?

if duplicate.nil?
    puts "No duplicate found."
else
    puts "Duplicate variation: #{duplicate}. Required #{loop_count} loops"
end