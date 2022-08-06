require "spec"
require "../src/*"

describe "Postcode Basic Test" do
  get_postcode = Postcode.generate_postcode()
  
  it "Similar Postcodes not allowed" do
     (get_postcode != Postcode.generate_postcode()).should eq true
  end
  
  it "Only 2 numbers allowed." do
     get_postcode.scan(/\d/).size.should eq 2
  end
  
  it "Only 1 space allowed." do
     get_postcode.scan(" ").size.should eq 1
  end
  
  it "Only 4 capitalized letters allowed." do
     get_postcode.scan(/[A-Z]/).size.should eq 4
  end
  
  it "Format is wrong." do
     (/[A-Z]+\d\s\d[A-Z]+/ === get_postcode).should eq true
  end
end
