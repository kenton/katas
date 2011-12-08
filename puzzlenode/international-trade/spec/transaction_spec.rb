require 'spec_helper'

describe Transaction do
  describe ".initialize" do
    let(:price) { stub(:value => 10.00, :currency => "USD") }
    let(:transaction) { stub(:city => "New York", :item_number => "123", :price => price) }

    it "creates a new transaction with a city or nil as default city" do
      Transaction.new.city.should == nil
      # Transaction.new("New York").should == "New York"
    end
  end
end
