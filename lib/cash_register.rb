class CashRegister
  attr_reader :discount
  attr_accessor :total, :items, :last_item

  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = []
    @last_item = 0.0
  end

  def add_item(title, price, quantity=1)
    self.total += (price * quantity)
    1.upto(quantity) do |item|
      @items << title
    end
    @last_item = price * quantity
  end

  def apply_discount
    if self.discount != 0
      self.total = @total.to_f - (@total.to_f * (@discount.to_f / 100.0))
      "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @items.pop
    @total -= @last_item
  end
end
