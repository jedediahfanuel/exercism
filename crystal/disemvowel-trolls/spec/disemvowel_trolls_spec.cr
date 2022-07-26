require "spec"
require "../src/*"

describe "DisemvowelTrolls" do
  it "1st test" do
    Troll.disemvowel("This website is for losers LOL!").should eq "Ths wbst s fr lsrs LL!"
  end
  
  it "2nd test" do
    Troll.disemvowel("No offense but,\nYour writing is among the worst I've ever read").should eq "N ffns bt,\nYr wrtng s mng th wrst 'v vr rd"
  end
  
  it "3rd test" do
    Troll.disemvowel("What are you, a communist?").should eq "Wht r y,  cmmnst?"
  end
end
