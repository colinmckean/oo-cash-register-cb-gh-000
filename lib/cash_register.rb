class CashRegister
  attr_accessor :total, :discount
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  def add_item(item, price, quantity = 1)
    self.total += price * quantity
  end

  def apply_discount
    if @discount != nil
      self.total -= ((self.total / 100) * discount)
    end
  end
end
