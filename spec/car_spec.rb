require_relative 'spec_helper.rb'

RSpec.describe Car do
  describe "#park" do
    it "should park our car in the lot" do
      car = Car.new('RND408')
      parking_lot = ParkingLot.new(5, 20)
      car.park(parking_lot)

      expect(parking_lot.hourly_rate).to eq(20)
      expect(parking_lot.spaces).to include(car)
      expect(car.lot).to eq(parking_lot)
    end
  end
end
