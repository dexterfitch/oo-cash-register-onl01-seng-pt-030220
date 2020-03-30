class CashRegister
  attr_accessor :total, :discount, :items, :price

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
    @items = []
  end

  def add_item(item, price, *quantity)
    @price = price
    if quantity.length > 0
      @total += price * quantity[0]
      until quantity[0] == 0
        @items << item
        quantity[0]-=1
      end
    else
      @total += price
      @items << item
    end
  end

  def apply_discount
    if @discount
      @total*= ((100 - @discount) * 0.01)
      if @total.to_i == @total
        "After the discount, the total comes to $#{@total.to_i}."
      else
        "After the discount, the total comes to $#{@total}."
      end
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end
end
