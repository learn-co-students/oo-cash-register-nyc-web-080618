class CashRegister

  attr_accessor :discount, :total


  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, qty = 1)
    @total += price * qty
    1.upto(qty) do |item|
      @items << title
    end
    @last_item = price * qty
  end

  def apply_discount
    @total *= ((100 - @discount.to_f) / 100)
    if @discount == 0
      "There is no discount to apply."
    else
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end
end
