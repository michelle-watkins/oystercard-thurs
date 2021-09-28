class Oystercard
    MAXIMUM_BALANCE = 90

    attr_reader :balance
    
    def initialize
        @balance = 0
    end

    def check_balance
        "Your balance is £#{@balance}."
    end    

    def top_up(top_up_amount)
        fail 'Maximum limit of £90 reached.' if top_up_amount + balance > MAXIMUM_BALANCE
        @balance += top_up_amount
        "You added a £#{top_up_amount} top-up."
    end  
    
    def deduct(amount)
        @balance -= amount
        "You have used £#{amount} of your balance."
    end    
end
