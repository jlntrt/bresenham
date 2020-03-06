require "./spec_helper"

describe Bresenham do
  it "should return start and end coordinates" do
    complete_bresenham.start_point.should be_a Bresenham::Coordinate
    complete_bresenham.end_point.should be_a Bresenham::Coordinate
  end

  it "#delta_x" do
    complete_bresenham.delta_x.should eq -11
  end

  it "#delta_y" do
    complete_bresenham.delta_y.should eq 7
  end

  it "#q_initial" do
    complete_bresenham.q_initial.should eq 3
  end

  it "#q_step" do
    complete_bresenham.q_step.should eq -8
  end

  it "#q_equal" do
    complete_bresenham.q_equal.should eq 14
  end
end
