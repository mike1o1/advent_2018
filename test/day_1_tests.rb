require "minitest/autorun"
require_relative("../day_1/solution")

class Day1Tests < Minitest::Test
    def test_day_1_solution_1
        assert_equal(3, Day1.problem_1([1, 1, 1]))
        assert_equal(0, Day1.problem_1([1, 1, -2]))
        assert_equal(-6, Day1.problem_1([-1, -2, -3]))
    end

    def test_day_1_solution_2
        assert_equal(0, Day1.problem_2([1, -1]))
        assert_equal(10, Day1.problem_2([3, 3, 4, -2, -4]))
        assert_equal(5, Day1.problem_2([-6, 3, 8, 5, -6]))
        assert_equal(14, Day1.problem_2([7, 7, -2, -7, -4]))
    end

    def test_day_1_solution_1_final
        input = File.readlines("day_1/input.txt")
        assert_equal(536, Day1.problem_1(input))
    end

    def test_day_2_solution_2_final
        input = File.readlines("day_1/input.txt")
        assert_equal(75108, Day1.problem_2(input))
    end
end