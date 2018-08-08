require "pry"

class CashRegister
  attr_reader :discount
  attr_accessor :total, :last_price

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = [ ]
    @last_price = 0
  end

  def add_item(title, price, quantity = 1)
    quantity.times do
      self.items.push(title)
    end
    self.last_price = price.to_f * quantity.to_f
    self.total = self.total + (price.to_f*quantity.to_f)

  end

  def apply_discount()
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total = (self.total.to_f) *((100.0-(self.discount.to_f))/100.0)
      "After the discount, the total comes to $#{self.total.to_i}."
  end
end

  def items
    @items
  end

  def void_last_transaction
      self.total -= self.last_price
  end

end
