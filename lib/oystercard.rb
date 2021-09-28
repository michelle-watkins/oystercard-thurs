class Oystercard
    attr_reader :balance
    
    def initialize
        @balance = 0
    end

    def check_balance
        "Your balance is £#{@balance}."
    end    

    def top_up(top_up_amount)
        @balance += top_up_amount
        "You added a £#{top_up_amount} top-up."
    end    
end
