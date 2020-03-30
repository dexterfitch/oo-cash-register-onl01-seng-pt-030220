class CashRegister
  attr_accessor :total, :discount

  def initialize(*discount)
    self.total = 0
    @discount = discount[0]
  end

  def total=(items)
  end
end
