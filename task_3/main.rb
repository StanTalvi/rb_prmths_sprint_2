require_relative("./Cylinder")
require_relative("./Parallelepiped")
require_relative("./Pyramid_triangular")
require_relative("./Pyramid_rectangular")

roundish = Cylinder.new(15, 13)
squareish = Parallelepiped.new(20, 15, 40)
triangulish = Pyramid_triangular.new(25, 10, 12, 14)
egyptish = Pyramid_rectangular.new(25, 10, 12)

p (roundish.volume)
p (squareish.volume)
p (triangulish.volume)
p (egyptish.volume)
