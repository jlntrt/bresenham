require "./coordinate"

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
    end

    def q_up : Int32
    end

    def q_down : Int32
    end

    def octant : Int32
    end
  end
end
