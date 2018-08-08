require 'pry'

class CashRegister
  attr_accessor :total, :discount, :title

  def initialize(discountIn = 0.0)
    @total = 0.0
    @discount = discountIn
    @itemList = []
    @priceList = []
  end

  def add_item(titleIn, priceIn, quantityIn=1)
    for i in 1..quantityIn
      @total += priceIn
      @itemList.push(titleIn)
      @priceList.push(priceIn)
    end
  end

  def apply_discount
    if discount == 0.0
      return "There is no discount to apply."
    else
      @total -= @total * (@discount / 100.0)
      #binding.pry
      return "After the discount, the total comes to $#{@total.round}."
    end
  end

  def items
    return @itemList
  end

  def void_last_transaction
    @total -= @priceList[-1]
  end

end
