class CashRegister
  attr_accessor :discount
  
  def initialize(*discount)
    @total = 0
    @discount = discount
  end
end
