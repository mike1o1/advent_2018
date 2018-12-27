module Day2
    class << self

        def problem_1(ids)
            count_occurrence(2, ids) * count_occurrence(3, ids)
        end

        def problem_2(ids)
            ids = ids.map(&:chomp)
            matching_items = find_within_one(ids)

            first_match = matching_items[0]
            second_match = matching_items[1]

            matching_letter = first_match.chars - second_match.chars

            (first_match.chars - matching_letter).join("")
        end

        private

            def count_occurrence(occurrence, strings)
                strings.count do |string|
                    matching_chars = string.chars.uniq
                    matching_chars.any? { |char| string.count(char) == occurrence }
                end
            end

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