require 'pry'
class CashRegister
  attr_accessor :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @item_array = []
    @prices_array = []
  end

  def discount
    @discount
  end

  def add_item(title,price,quantity = 1)
    @total += (quantity * price)
    for i in 1..quantity do
      @item_array.push(title)
      @prices_array.push(price)
      #binding.pry
    end
  end

  def apply_discount
      @total = @total - (@total * 0.20)
      string = "After the discount, the total comes to $#{@total}"
      string[-1] = ""
      if @total == 0
        return "There is no discount to apply."
      else
        return string
      end
    end

  def items
    @item_array
  end

  def void_last_transaction
    @prices_array.each do |array_instance|
      @total -= array_instance
    end
    return @total
  end
end


#def total=(new_total)
#  @total = new_total
#end
