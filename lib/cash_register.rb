class CashRegister
  attr_accessor :total, :discount, :items :transaction
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, quantity = 1)
    quantity.times { @items << item }
    @transaction = price * quantity
    self.total += @transaction

  end

  def apply_discount
    if @discount != 0
      self.total -= ((self.total / 100) * discount)
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total -= @transaction
  end
end
