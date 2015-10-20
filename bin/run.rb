#!/usr/bin/env ruby
require_relative '../config/environment'

puts car = Car.new('RND408')
puts parking_space = ParkingSpace.new(1, 20, 0)
puts parking_lot = ParkingLot.new(100)
puts parking_fee = ParkingFee.new(2.75)
puts parking_space_payment = ParkingSpacePayment.new(parking_space)
