require "./coordinate"
require "./octant"

module Bresenham
  class Bresenham
    getter end_point, start_point
    
    def initialize(@start_point : Coordinate, @end_point : Coordinate)
    end

    def delta_x : Int32
        -1 * (end_point.x - start_point.x)
    end

    def delta_y : Int32
      end_point.y - start_point.y
    end

    def q_initial : Int32
      2 * delta_y + delta_x
    end

    def q_step : Int32
      2 * delta_y + 2 * delta_x
    end

    def q_equal : Int32
      2 * delta_y
    end

    def octant_number : Int32
      ocant = Octant.new delta_x, delta_y
      octant
    end
  end
end
