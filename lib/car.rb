class Car
  attr_accessor :license_plate_number, :lot, :check_in_time, :check_out_time, :total_hours

  def initialize(license_plate_number)
    @license_plate_number = license_plate_number
  end

  def park(lot)
    if lot.spaces.include?(" ")
      lot.spaces[lot.spaces.index(" ")] = self
      self.lot = lot
      check_in_time
    else
      raise Error "Sorry, our lot is full at this time. Thank you."
    end
  end

  def exit
    check_out_time
    pay_for_parking
    self.lot.transactions += 1
  end

  def check_in_time
    @check_in_time = Time.now
  end

  def check_out_time
    @check_out_time = Time.now
  end

  def total_time_parked
    @total_hours = ((check_out_time - check_in_time) / 3600).round
  end

  def pay_for_parking
    self.total_time_parked * self.lot.hourly_rate
  end
end
