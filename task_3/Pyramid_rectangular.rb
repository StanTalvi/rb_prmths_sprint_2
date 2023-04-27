require_relative("./Parallelepiped")

class Pyramid_rectangular  < Parallelepiped
    def initialize(height, width, length)
        super
    end

    def area
        super / 3
    end
end