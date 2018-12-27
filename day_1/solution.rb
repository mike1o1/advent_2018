module Day1
    def self.problem_1(changes)
        changes.map(&:to_i).reduce(:+)
    end

    def self.problem_2(changes)
        changes = changes.map(&:to_i)

        found_frequences = {}

        frequency = 0
        found_frequences[0] = 1

        changes.cycle do |change|
            frequency += change

            repeat = found_frequences[frequency]

            if repeat.nil?
                found_frequences[frequency] = true
            else
                return frequency
            end
        end
    end
end
