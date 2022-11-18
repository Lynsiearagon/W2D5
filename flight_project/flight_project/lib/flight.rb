class Flight

    attr_reader :passengers 

    def initialize(flight_num, capacity)
        @flight_number = flight_num
        @capacity = capacity
        @passengers = []
    end

    def full?
        if @passengers.length < @capacity
            return false
        else
            return true
        end
    end

    def board_passenger(passenger)
        if !full? && passenger.has_flight?(@flight_number)
            @passengers << passenger
        end
    end

    def list_passengers
        @passengers.map { |passenger| passenger.name }
    end

    def [](idx)
        @passengers[idx]
    end

    def <<(passenger)
        board_passenger(passenger)
    end

end