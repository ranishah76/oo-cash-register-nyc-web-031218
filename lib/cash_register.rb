class CashRegister

attr_accessor :items, :price, :total, :discount, :title, :last_total

def initialize(discount = 0)
  @discount = discount
  @total = 0
  @items = []
end

def total
  @total
end

def add_item(title, price, quantity = 1)
  self.total += price*quantity
  quantity.times do
  @items << title
end
  self.last_total = total
end

def apply_discount
if @discount > 0
  @total = @total*(100 - @discount)/100
   "After the discount, the total comes to $#{total}."
 else
  return  "There is no discount to apply."
  end
end

def void_last_transaction
  self.total = self.total - self.last_total
end 

end
