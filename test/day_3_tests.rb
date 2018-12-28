require "minitest/autorun"
require_relative("../day_3/solution")

class Day3Tests < Minitest::Test
    def test_day_3_solution_1
        plans = ["#1 @ 1,3: 4x4", "#2 @ 3,1: 4x4", "#3 @ 5,5: 2x2"]

        assert_equal(4, Day3.problem_1(plans))
    end
end