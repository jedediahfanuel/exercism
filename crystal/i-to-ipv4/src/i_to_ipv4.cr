require "spec"
require "../src/*"

describe "Fixed Tests" do
  it "works" do
    int32_to_ip(2154959208).should eq "128.114.17.104"
    int32_to_ip(0).should eq "0.0.0.0"
    int32_to_ip(2149583361).should eq "128.32.10.1"
  end
end

