require_relative("./Rectangle")

class RectangleForPyramid < Rectangle

    def area
        super / 3
    end
end