class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

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

  def deposit(money)
    self.balance += money
  end
end
