
class	CashRegister
  attr_accessor :discount, :total

  def initialize(discount=nil)
  	@total = 0
		@discount = discount / 1000
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    self.total -= self.total / discount
  end
end
