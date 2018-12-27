module Day2
    class << self

        def problem_1(ids)
            twice_count = 0
            thrice_count = 0

            ids.each do |id|
                group = id.chars.group_by { |c| c }
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
                end
            end

            twice_count * thrice_count
        end

        def problem_2(ids)
            ids = ids.map(&:chomp)
            matching_items = find_within_one(ids)

            first_match = matching_items[0].chars
            second_match = matching_items[1].chars

            matching_letter = first_match - second_match

            (first_match - matching_letter).join("")
        end

        private

        def find_within_one(set_1)
            set_1.each do |set|
                set_letters = set.chars

                other_sets = set_1 - [set]

                other_sets.each do |other_set|
                    other_letters = other_set.chars

                    if is_within_one?(set_letters, other_letters)
                        return [set, other_set]
                    end
                end
            end
        end

        def is_within_one?(array_1, array_2)
            difference_count = 0
            array_1.each_index do |index|
                if array_1[index] != array_2[index]
                    difference_count += 1
                end

                return false if difference_count > 1
            end

            difference_count == 1
        end
    end
end