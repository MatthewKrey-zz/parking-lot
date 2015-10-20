class ParkingLot
    attr_accessor :spaces, :hourly_rate, :transactions

    def initialize(spaces, hourly_rate)
      @spaces = Array.new(spaces, " ")
      @hourly_rate = hourly_rate
      @transactions = 0
    end
end
