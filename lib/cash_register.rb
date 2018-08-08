
class CashRegister

    attr_accessor :total, :discount, :items, :last_item, :last_item_amt
    attr_reader :title

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @title = title
    @items =[]
  end

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    @quantity = quantity
     quantity.times do
       @items << title
     end
     @last_item_amt = price
  end

  def apply_discount  #applies the discount to the total price
      if @discount != 0
         @total -= @total * (@discount * 0.01)
        return "After the discount, the total comes to $#{@total.to_i}."

      else
        return "There is no discount to apply."
      end
  end

  def items #returns an array containing all items that have been added
      @items
  end

  def void_last_transaction #subtracts the last transaction from the total
      @total -= @last_item_amt
  end

end
