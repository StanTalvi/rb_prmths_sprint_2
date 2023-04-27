require_relative("./C3DFigure")

class Cylinder < C3DFigure
    
    def initialize(height, radius)
        super(height)
        @radius = radius
    end

    def area
        Math::PI * @radius**2
    end
end