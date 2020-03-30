class CashRegister
  attr_accessor :total, :discount

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
    @items = []
  end

  def add_item(item, price, *quantity)
    @items << item
    if quantity
      bulk = price * quantity
      @total += bulk
    else
      @total += price
    end
  end
end
