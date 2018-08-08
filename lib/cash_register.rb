class CashRegister

attr_accessor :total, :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item = []
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
    counter = 0
    while counter < quantity
      @item << title
      counter += 1
    end
    @last_transaction = price*quantity
  end

  def apply_discount
    if @discount == 0
      return "There is no discount to apply."
    else
      @total *= (1 - @discount.to_f/100)
      return "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @item
  end

  def void_last_transaction
    @total -= @last_transaction
  end
end
