require_relative("./Cylinder")
require_relative("./Parallelepiped")

roundish = Cylinder.new(15, 13)
squareish = Parallelepiped.new(20, 15, 40)

p (roundish.volume)
p (squareish.volume)

