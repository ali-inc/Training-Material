require_relative 'square.rb'
require_relative 'rectangle.rb'
require_relative 'triangle.rb'
require_relative 'circle.rb'
require_relative 'oval.rb'

square1 = Square.new 5
square2 = Square.new 50
rectangle1 = Rectangle.new 2,3
rectangle2 = Rectangle.new 4,5
triangle1 = Triangle.new 5,4
circle1 = Circle.new 4
oval1 = Oval.new 5,3


square1.description
square2.description
rectangle1.description
rectangle2.description
triangle1.description
circle1.description
oval1.description
