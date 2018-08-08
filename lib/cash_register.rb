require 'pry'

class CashRegister

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def discount
    @discount
  end

  def total=(total)
    @total = total
  end

  def total
    @total
  end

  def add_item(title,price,quantity=1)
    quantity.times do
      @items << title
      @prices << price
    end
    self.total += price*quantity
  end

  def apply_discount
    if self.discount == 0
      "There is no discount to apply."
    else
      self.total -= self.discount*10
      "After the discount, the total comes to $#{self.total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    self.total -= @prices[@prices.length-1]
    @items.pop
    @prices.pop
    self.total
  end

end
