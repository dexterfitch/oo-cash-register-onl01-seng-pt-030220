class CashRegister
  attr_accessor :total = 0, :discount

  def initialize(*discount)
    @discount = discount[0]
  end

  def total=(items)
  end
end
