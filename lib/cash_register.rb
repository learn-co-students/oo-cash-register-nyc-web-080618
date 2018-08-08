require 'pry'


class CashRegister

  attr_accessor :total, :discount, :title


  def initialize(discount=0.0)
    #binding.pry
    @total = 0.0
    @discount = discount
    @items = []
    @price = []
  end


  def add_item(title, price, quantity=1)
    for i in 1..quantity
      self.total += price
        @items.push(title)
        @price.push(price)
    end
  end


  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      #binding.pry
      @total -= self.total * (self.discount / 100.0)
        return "After the discount, the total comes to $#{@total.round}."
    end
  end


  def items
    @items
  end

  def void_last_transaction
    @total -= @price[-1]
  end

end
