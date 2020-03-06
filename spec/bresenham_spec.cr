require "./spec_helper"

describe Bresenham do 
  it "should return start and end coordinates" do
    start_point = Bresenham::Coordinate.new 2, 4
    end_point = Bresenham::Coordinate.new 6, 2
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.start_point.should be_a Bresenham::Coordinate
    bresenham.end_point.should be_a Bresenham::Coordinate
  end

  it "#delta_x" do
    start_point = Bresenham::Coordinate.new 2, 4
    end_point = Bresenham::Coordinate.new 6, 2
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.delta_x.should eq -4
  end

  it "#delta_y" do
    start_point = Bresenham::Coordinate.new 2, 4
    end_point = Bresenham::Coordinate.new 6, 2
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.delta_y.should eq -2
  end
end