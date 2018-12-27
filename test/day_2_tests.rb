require "minitest/autorun"
require_relative("../day_2/solution")

class Day2Tests < Minitest::Test
    def test_day_2_solution_1
        ids = ["abcdef", "bababc", "abbcde", "abcccd", "aabcdd", "abcdee", "ababab"]
        assert_equal(12, Day2.problem_1(ids))
    end

    def test_day_2_solution_2
        ids = ["abcde", "fghij", "klmno", "pqrst", "fguij", "axcye", "wvxyz"]
        assert_equal("fgij", Day2.problem_2(ids))
    end

    def test_day_2_solution_1_final
        input = File.readlines("day_2/input.txt")
        assert_equal(8610, Day2.problem_1(input))
    end

    def test_day_2_solution_2_final
        input = File.readlines("day_2/input.txt")
        assert_equal("iosnxmfkpabcjpdywvrtahluy", Day2.problem_2(input))
    end
end