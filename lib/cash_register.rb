class CashRegister

attr_accessor :items, :price, :total, :discount, :title 

def initialize(discount = 0)
  @item = item
  @price = price
  @discount = discount
  @total = 0
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  @total += price*quantity
  @items << self
end

def apply_discount
if @discount > 0
  @total = @total*(100 - @discount)/100
   "After the discount, the total comes to $#{total}."
 else
  return  "There is no discount to apply."
  end
end

end
