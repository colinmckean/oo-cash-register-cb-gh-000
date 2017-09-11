class CashRegister
  attr_accessor :total, :discount
  def initialize(*discount)
    @total = 0
    @discount = discount[0]
  end
  def add_item(item, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    if @discount != nil
    @total - (@discount * 100)
  end
  end
end
