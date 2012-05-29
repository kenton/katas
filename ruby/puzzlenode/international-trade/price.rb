class Price

  attr_accessor :value, :currency

  def initialize(value = nil, currency = nil)
    @value = value
    @currency = currency
  end

  def to_cad
    (@value * 0.9911) if @currency == "USD"
  end

end
