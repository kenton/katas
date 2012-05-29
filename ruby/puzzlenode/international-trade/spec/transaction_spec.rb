require 'spec_helper'

describe Transaction do
  describe ".initialize" do
    # let(:price) { stub(:value => 10.00, :currency => "USD") }
    # let(:transaction) { stub(:city => "New York", :item_number => "123", :price => price) }

    it "creates a new transaction with a city or nil as default city" do
      Transaction.new.city.should == nil
      transaction = Transaction.new("New York")
      transaction.city.should == "New York"
    end
  end

  describe ".value" do
    # let(:price) { stub(:value => 10.00, :currency => "USD") }
    # let(:transaction) { stub(:city => "New York", :item_number => "123", :price => price) }

    it "returns the value of the transaction" do
      transaction = Transaction.new("New York", "123", 10.00, "USD")
      transaction.price.value.should == 10.00
    end
  end

  it "retrieves the currency conversion" do
    transaction = Transaction.new("New York", "123", 1.00, "USD")
    transaction.price.to_cad.should == 0.9911
  end

end
