class BankAccount
  attr_accessor :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def display_balance
    @balance
  end

  def valid?
    true if self.status == "open " && self.display_balance > 0
end
