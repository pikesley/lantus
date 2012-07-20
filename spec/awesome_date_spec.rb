require 'lantus'

describe Lantus::AwesomeDate do
  otd = Lantus::AwesomeDate.new "Jun 22 2012 9:00:12 AM"

  it "should have the correct timestamp" do
    otd["timestamp"].to_s.should == "2012-06-22 09:00:12 +0100"
  end

  it "should have the correct time" do
    otd["time"].should == "09:00:12 BST"
  end

  it "should have the correct date" do
    otd["date"].should == "2012-06-22"
  end

  it "should have the correct day" do
    otd["day"].should == "friday"
  end

  it "should have the correct month" do
    otd["month"].should == "june"
  end

  it "should have the correct cardinal day" do
    otd["cardinal_day"].should == 22
  end

  it "should have the correct ordinal day" do
    otd["ordinal_day"].should == "22nd"
  end

  it "should have the correct nice_date" do
    otd["nice_date"].should == "friday june 22nd"
  end

  it "should have the correct short time" do
    otd["short_time"].should == "09:00"
  end

  otd_gmt = Lantus::AwesomeDate.new "Jan 22 2012 9:00:12 PM"

  it "should have the correct timestamp" do
    otd_gmt["timestamp"].to_s.should == "2012-01-22 21:00:12 +0000"
  end

  it "should have the correct time and TZ" do
    otd_gmt["time"].should == "21:00:12 GMT"
  end
end