require 'pry'

class CashRegister
  attr_accessor :discount, :total, :apply_discount, :discount

  def initialize (discount=0)
    @discount= discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity=1)
    self.total += price * quantity
    i = 0
    while i < quantity
      @items << title
      i += 1
    end
  end


  def apply_discount

    if @discount != 0
      self.total = (total* ((100.0 - discount.to_f)/100)).to_i
      "After the discount, the total comes to $#{self.total}."
    else
      "There is no discount to apply."
    end

  end

  def items
    return @items
    binding.pry
  end

  def void_last_transaction
    @total = 0.to_f
  end


end
