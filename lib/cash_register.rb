class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(*discount)
    @total = 0
    @discount = discount[0]
    @items = []
  end

  def add_item(item, price, *quantity)
    if quantity.length > 0
      i = quantity[0]
      @total += price * i
      until i == 0
        @items << item
        i-=1
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
end
