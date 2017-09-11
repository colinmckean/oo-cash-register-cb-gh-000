class CashRegister
  attr_accessor :total
  attr_reader :discount
  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end
  def add_item(item, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount

  end
end
