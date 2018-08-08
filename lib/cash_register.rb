require 'pry'
class CashRegister

  attr_reader :discount
  attr_accessor :total

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    self.total = total + (price * quantity)
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if self.discount != 0
      self.total = @total.to_f - (@total.to_f*(@discount.to_f/100.00))
      return "After the discount, the total comes to $#{self.total.to_i}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total = @total - self.total
    @items.pop
  end

end
