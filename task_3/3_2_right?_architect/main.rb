require_relative("./C3DFigure")
require_relative("./Rectangle")
require_relative("./Circle")
require_relative("./TriangleBySidesForPyramid")
require_relative("./RectangleForPyramid")


roundish = C3DFigure.new(Circle.new(15).area, 13)
squareish = C3DFigure.new(Rectangle.new(20, 15).area, 40)
triangulish = C3DFigure.new(TriangleBySidesForPyramid.new(10, 12, 14).area, 25)
egyptish = C3DFigure.new(RectangleForPyramid.new(10, 12).area, 25)


p (roundish.volume)
p (squareish.volume)
p (triangulish.volume)
p (egyptish.volume)

