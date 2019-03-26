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
      percentage = discount.to_f/100
      self.total -= self.total * percentage
    end
    puts "After the discount, the total comes to $#{self.total}."
  end
end
