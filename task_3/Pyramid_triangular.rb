require_relative("./C3DFigure")

class Pyramid_triangular  < C3DFigure
    def initialize(height, base_side_a, base_side_b, base_side_c)
        super(height)
        @base_side_a = base_side_a
        @base_side_b = base_side_b
        @base_side_c = base_side_c
    end

    def area
        halfper = (@base_side_a + @base_side_b + @base_side_c) * 0.5
        (1.0 / 3.0) * Math.sqrt(halfper * (halfper - @base_side_a) * (halfper - @base_side_b) * (halfper - @base_side_c))
    end
end