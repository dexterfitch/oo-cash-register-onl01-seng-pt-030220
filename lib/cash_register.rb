class CashRegister
  attr_accessor :total, :discount

  def initialize(*discount)
    @discount = discount[0]
  end

  def total=(items)
  end
end
