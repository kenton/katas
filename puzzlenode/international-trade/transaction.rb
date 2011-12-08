class Transaction
   
  attr_accessor :city, :item_number, :price

  def initialize(city = nil, item_number = nil, value = nil, currency = nil)
    @city = city
    @item_number = item_number
    @price = Price.new(value, currency)
  end

end
