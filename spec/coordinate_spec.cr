require "./spec_helper"

describe Bresenham::Coordinate do
  it "should return the x value" do
    coordinate = Bresenham::Coordinate.new 3, 7
    
    coordinate.x.should eq 3
  end

  it "should return the y value" do
    coordinate = Bresenham::Coordinate.new 6, 2
    
    coordinate.y.should eq 2
  end
end