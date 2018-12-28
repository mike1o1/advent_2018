# ........
# ...2222.
# ...2222.
# .11XX22.
# .11XX22.
# .111133.
# .111133.
# ........

module Day3
    class << self
        def problem_1(plans)

            claim_plans = plans.map do |plan|
                ClaimPlan.new(plan)
            end

            puts claim_plans.first
        end

    end

    class ClaimPlan
        attr_accessor :claim_number, :start_x, :start_y, :height, :width

        def initialize(raw_plan)
            @raw_plan = raw_plan
            parse_plan(raw_plan)
        end

        def to_s
            "##{@claim_number} @ #{@start_x},#{@start_y}: #{@width}x#{@height}"
        end

        def intersects?(other_claim)
            return false if @start_x > other_claim.last_x || other_claim.start_x > last_x
            return false if @start_y > other_claim.last_y || other_claim.start_y > last_y
        end

        def last_x
            @start_x + @width - 1
        end

        def last_y 
            @start_y + @height - 1
        end

        def overlaps_x?(x)
            x >= @start_x && x < @start_x + @width
        end

        def overlaps_y?(y)
            y >= @start_y && y < @start_y + @height
        end

        private
            def parse_plan(plan)
                @claim_number = plan.split("@")[0].gsub("#", "").to_i
                coordinates = plan.split("@")[1].split(":")[0].strip
                size = plan.split(":")[1].strip

                @start_x, @start_y = coordinates.split(",").map(&:to_i)
                @width, @height = size.split("x").map(&:to_i)
            end
    end
end