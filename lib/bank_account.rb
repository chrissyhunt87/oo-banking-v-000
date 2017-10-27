class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == "open " && self.display_balance > 0 ? true : false
  end

  def deposit(money)
    self.balance += money
  end
end
