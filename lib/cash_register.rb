
class	CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
  	@total = 0
		@discount = discount.to_f / 1000
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    unless discount == 0
      self.total -= self.total / discount
    end
  end
end
