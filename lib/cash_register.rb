require "pry"

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(discount = 0) ## put the optional in ()
    @total = 0  ## default 0 put here
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
    @quantity = quantity
    @price = price
    @total += price * quantity
    quantity.times do
      @items << title
    end
  end

  def apply_discount
    if @discount == 0
      "There is no discount to apply."
    else

      # @total -= @total * (@discount.to_f / 100.to_f)
      @total -= @total * (@discount * 0.01)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def item
    @items
  end

  def void_last_transaction
    @total -= @price*@quantity
  end
  # binding pry
end
