require "spec"
require "../src/*"

describe "SemiStructuredLog" do
  it "emits info" do
    SemiStructuredLog.info("Timezone changed").should eq("[INFO]: Timezone changed")
  end

  it "emits warning" do
    SemiStructuredLog.warn("Timezone not set").should eq("[WARNING]: Timezone not set")
  end

  it "emits warning" do
    SemiStructuredLog.error("Disk full").should eq("[ERROR]: Disk full")
  end
  
  it "log emits info" do
    SemiStructuredLog.log(SemiStructuredLog::LogLevel::Info, "Timezone changed").should eq("[INFO]: Timezone changed")
  end

  it "log emits warning" do
    SemiStructuredLog.log(SemiStructuredLog::LogLevel::Warning, "Timezone not set").should eq("[WARNING]: Timezone not set")
  end

  it "log emits error" do
    SemiStructuredLog.log(SemiStructuredLog::LogLevel::Error, "Disk full").should eq("[ERROR]: Disk full")
  end
  
  it "log emits Debug -- add variant" do
    SemiStructuredLog.log(SemiStructuredLog::LogLevel::Debug, "reached line 123").should eq("[DEBUG]: reached line 123")
  end
end
