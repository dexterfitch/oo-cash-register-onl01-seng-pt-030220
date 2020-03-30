class CashRegister
  attr_accessor :total, :discount

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
    @items = []
  end

  def add_item(item, price, *quantity)
    @items << item
    if quantity.length > 0
      @total += price * quantity[0]
    else
      @total += price
    end
  end

  def apply_discount
    @total*= ((100 - @discount) * 0.01)
  end
end
