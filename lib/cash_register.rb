class CashRegister
  attr_accessor :total
  def initialize
    @total = 0
  end
  def add_item(item, price, quantity)
    self.total += price
  end
end
