require "./spec_helper"

describe Bresenham do 
  it "should return start and end coordinates" do
    start_point = Bresenham::Coordinate.new 0, 0
    end_point = Bresenham::Coordinate.new 11, 7
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.start_point.should be_a Bresenham::Coordinate
    bresenham.end_point.should be_a Bresenham::Coordinate
  end

  it "#delta_x" do
    start_point = Bresenham::Coordinate.new 0, 0
    end_point = Bresenham::Coordinate.new 11, 7
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.delta_x.should eq -11
  end

  it "#delta_y" do
    start_point = Bresenham::Coordinate.new 0, 0
    end_point = Bresenham::Coordinate.new 11, 7
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.delta_y.should eq 7
  end

  it "#q_initial" do
    start_point = Bresenham::Coordinate.new 0, 0
    end_point = Bresenham::Coordinate.new 11, 7
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.q_initial.should eq 3
  end

  it "#q_step" do
    start_point = Bresenham::Coordinate.new 0, 0
    end_point = Bresenham::Coordinate.new 11, 7
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.q_step.should eq -8
  end

  it "#q_equal" do
    start_point = Bresenham::Coordinate.new 0, 0
    end_point = Bresenham::Coordinate.new 11, 7
    bresenham = Bresenham::Bresenham.new start_point, end_point

    bresenham.q_equal.should eq 14
  end
end