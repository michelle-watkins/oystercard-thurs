class Oystercard
    MAXIMUM_BALANCE = 90
    MINIMUM_BALANCE = 1
    MINIMUM_CHARGE = 1

    attr_reader :balance, :entry_station, :completed_journeys
    
    def initialize
        @balance = 0
        @entry_station = nil
        @completed_journeys = []
    end  

    def top_up(amount)
        fail "Maximum limit of £#{MAXIMUM_BALANCE} has been reached." if amount + balance > MAXIMUM_BALANCE
        @balance += amount
        "You added a £#{amount} top-up."
    end  
    
    def deduct(amount)
        @balance -= amount
        "You have used £#{amount} of your balance."
    end    

    def in_journey?
        @entry_station
    end

    def touch_in(entry_station)
        if @balance < MINIMUM_BALANCE
            raise "Minimum balance of £#{MINIMUM_BALANCE} needed."  
        else
            @entry_station = entry_station
            "You have started your journey."
        end
    end

    def touch_out(exit_station)
        deduct(MINIMUM_CHARGE)
        @completed_journeys << { entry_station: entry_station, exit_station: exit_station }
        @entry_station = nil
    end
end