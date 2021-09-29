class Oystercard
    MAXIMUM_BALANCE = 90
    MINIMUM_BALANCE = 5

    attr_reader :balance
    
    def initialize
        @balance = 0
        @in_use = false
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
        @in_use
    end

    def touch_in
        if @balance > MINIMUM_BALANCE
            @in_use = true
            "You have started your journey."
        else
            "You do not have enough balance on your card."
        end
    end

    def touch_out
        @in_use = false
    end

end