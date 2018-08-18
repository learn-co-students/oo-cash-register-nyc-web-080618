require 'pry'

class CashRegister

  attr_accessor :total

  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @items = []
  end



  def discount
    @discount
  end

  def add_item(item,price,quantity=1)
    self.total += price * quantity
    @last_transaction = { item: item, price: price, quantity: quantity }
    if quantity == 1
      @items << item
    elsif quantity == 0
      @items
    else
      i = 0
      while i < quantity
        @items << item
        i += 1
      end
    end

  end


  def void_last_transaction
    self.total -= @last_transaction[:price]
    @items.pop
  end

  def apply_discount
    if self.discount == 0 || self.discount == nil
      "There is no discount to apply."
    else
      self.total = self.total - (self.total * (self.discount.to_f / 100))
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end

  def items
    @items
  end

end


example = CashRegister.new
example.items


# how do we create @last_transaction without defining it first?
