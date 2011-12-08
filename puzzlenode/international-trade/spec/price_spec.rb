require 'spec_helper'

describe Price do

  describe ".initialize" do
    it "creates a new price with a value and currency" do
      Price.new.should be
      Price.new.value.should == nil
      price = Price.new(10.00, "USD")
      price.value.should == 10.00
    end
  end

  describe "currency conversions" do
    it "converts from USD to CAD" do
      price = Price.new(1.00, "USD")
      price.to_cad.should == 0.9911
    end
  end

end
