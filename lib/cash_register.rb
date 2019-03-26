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
    if discount != 0
      percentage = discount.to_f/100
      self.total -= self.total * percentage
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items

  end
end
