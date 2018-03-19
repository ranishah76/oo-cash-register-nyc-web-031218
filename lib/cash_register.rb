class CashRegister

attr_accessor :item, :price, :total

def initialize(item, price)
  @item = item
  @price = price
  @total = 0
end 

end
