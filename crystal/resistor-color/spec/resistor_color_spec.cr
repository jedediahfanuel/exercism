require "spec"
require "../src/*"

describe "ResistorColor" do
  it "Black" do
    ResistorColor.color_code("black").should eq(0)
  end

  it "White" do
    ResistorColor.color_code("white").should eq(9)
  end

  it "Orange" do
    ResistorColor.color_code("orange").should eq(3)
  end

  it "Colors" do
    ResistorColor.colors.should eq(["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"])
  end
end

describe "ResistorColorEnum" do
  it "Test Black" do
    ResistorColor.color_to_value(ResistorColor::Clr::Black).should eq(0)
  end

  it "Test White" do
    ResistorColor.color_to_value(ResistorColor::Clr::White).should eq(9)
  end

  it "Test Orange" do
    ResistorColor.color_to_value(ResistorColor::Clr::Orange).should eq(3)
  end
  
  it "Test 2" do
    ResistorColor.value_to_color_string(2).should eq("Red")
  end

  it "Test 6" do
    ResistorColor.value_to_color_string(6).should eq("Blue")
  end

  it "Test 8" do
    ResistorColor.value_to_color_string(8).should eq("Grey")
  end
  
  it "Test 11 out of range" do
    expect_raises(Exception) do
      ResistorColor.value_to_color_string(11)
    end
  end
  
  it "Test all colors" do
    ResistorColor.clrs().should eq(["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Grey", "White"])
  end
end
