class Transfer
 class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @receiver = receiver
    @sender = sender 
    @amount = amount
    @status = "pending"
  end
  
  def valid? 
    # binding.pry
    
    sender.valid? && receiver.valid?
    
    #valid if both accounts status == "open" and balance > 0 
    #should reject transfer if accounts aren't valid.. or if balance <=0
  
  end
  
  def execute_transaction
    if valid? && sender.balance > amount && status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else 
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
  end
    
    def reverse_transfer
      if self.status == "complete"
        self.status = "reversed"
        sender.balance += amount
      receiver.balance -= amount
    end
    end
  
  end
  
  
endclass Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @receiver = receiver
    @sender = sender 
    @amount = amount
    @status = "pending"
  end
  
  def valid? 
    # binding.pry
    
    sender.valid? && receiver.valid?
    
    #valid if both accounts status == "open" and balance > 0 
    #should reject transfer if accounts aren't valid.. or if balance <=0
  
  end
  
  def execute_transaction
    if valid? && sender.balance > amount && status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else 
      self.status = "rejected"
      return "Transaction rejected. Please check your account balance."
  end
    
    def reverse_transfer
      if self.status == "complete"
        self.status = "reversed"
        sender.balance += amount
      receiver.balance -= amount
    end
    end
  
  end
  
  
end