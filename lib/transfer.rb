require 'pry'

class Transfer
  attr_accessor :sender, :receiver, :status, :amount, :bankaccount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = 50
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
    #binding.pry
  end

  def execute_transaction
  if valid? && self.status == "pending"
     @sender.balance -= @amount
     @receiver.balance += @amount
     self.status = "complete"
     #binding.pry
  else
     "Transaction rejected. Please check your account balance. "
     self.status = "rejected"

    end
  end

end
