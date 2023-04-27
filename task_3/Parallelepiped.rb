require_relative("./C3DFigure")

class Parallelepiped  < C3DFigure
    
    def initialize(height, width, length)
        super(height)
        @width = width
        @length = length
    end

    def area
        @width * @length
    end
end