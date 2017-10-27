class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    sender.valid? && receiver.valid? ? true : false
  end

  def execute_transaction
    if !self.valid? || sender.balance > amount
      "Transaction rejected. Please check your account balance."
    if self.status != "complete"
      sender.balance -= self.amount
      receiver.balance += self.amount
      self.status = "complete"
    else
      "Error! You have already executed this transaction."
    end
  end
end
