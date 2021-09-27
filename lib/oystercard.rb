class Oystercard
    attr_reader :balance
    
    def initialise
        @balance = 0
    end

    def top_up(top_up_amount)
        @balance += top_up_amount
    end    
end