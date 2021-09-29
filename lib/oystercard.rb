class Oystercard
    MAXIMUM_BALANCE = 90
    BALANCE_LIMIT = 5

    attr_reader :balance
    
    def initialize
        @balance = 0
    end

    def check_balance
        "Your balance is £#{@balance}."
    end    

    def top_up(amount)
        fail 'Maximum limit of £90 reached.' if amount + balance > MAXIMUM_BALANCE
        @balance += amount
        "You added a £#{amount} top-up."
    end  
    
    def deduct(amount)
        @balance -= amount
        "You have used £#{amount} of your balance."
    end    

    def in_journey?
        @in_use = false
    end

    def touch_in
        if @balance > BALANCE_LIMIT
            @in_use = true
        end
    end

end
