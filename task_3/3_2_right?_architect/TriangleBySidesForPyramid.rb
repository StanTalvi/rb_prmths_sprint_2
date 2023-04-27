class TriangleBySidesForPyramid
    def initialize(base_side_a, base_side_b, base_side_c)
        @base_side_a = base_side_a
        @base_side_b = base_side_b
        @base_side_c = base_side_c
    end

    def area
        halfp = (@base_side_a + @base_side_b + @base_side_c) * 0.5
        Math.sqrt(halfp * (halfp - @base_side_a) * (halfp - @base_side_b) * (halfp - @base_side_c)) / 3
    end
end