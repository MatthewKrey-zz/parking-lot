require_relative 'spec_helper.rb'

RSpec.describe ParkingLot do
  describe "#new" do
    it "intializes with spaces, hourly_rate and zero transactions" do
    lot = ParkingLot.new(5, 20)

    expect(lot.spaces).to match([" ", " ", " ", " ", " "])
    expect(lot.hourly_rate).to eq(20)
    expect(lot.transactions).to eq(0)
    end
  end
end
