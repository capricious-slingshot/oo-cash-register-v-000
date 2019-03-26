require 'pry'
class	CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0)
  	@total = 0
		@discount = discount
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
  end

  def apply_discount
    unless discount == 0
      disc = discount/100
      # binding.pry
      self.total = self.total * disc
    end
  end
end
