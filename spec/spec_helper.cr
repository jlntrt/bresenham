require "spec"
require "../src/bresenham"
require "../src/coordinate"

def complete_bresenham
  start_point = Bresenham::Coordinate.new 0, 0
  end_point = Bresenham::Coordinate.new 11, 7

  Bresenham::Bresenham.new start_point, end_point
end
