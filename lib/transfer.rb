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
  end

  def execute_transaction
  if @sender.valid? == true && @status == "pending"
     @sender.balance -= @amount
     @receiver.balance += @amount
     @status = "complete"
  elsif @sender.valid? == false && @status != "pending"
     "Transaction rejected. Please check your account balance. "
     @status = "rejected"
    end
  end

end
