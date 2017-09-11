class CashRegister
  attr_accessor :total
  attr_reader :discount
  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end
  def add_item(item, price, *quantity)
    self.total += price
  end
end
