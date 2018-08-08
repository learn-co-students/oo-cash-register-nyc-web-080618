class CashRegister
  attr_accessor :total,:discount

  def initialize(discount=0,total=0)
     @total=total
     @discount=discount
     @array=[]
  end
  
  def add_item(title,price,quantity=1)
    @price=price
    @quantity=quantity
    @total+=price*quantity
    quantity.times do
       @array<<title
    end
  end
  def apply_discount
    if @discount!=0
      @total-=(@total*@discount/100)
       "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @array
  end

  def void_last_transaction
    @total-=(@price*@quantity)
  end
end
