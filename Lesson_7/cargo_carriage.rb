require_relative "carriage"


class CargoCarriage < Carriage

  def initialize(type = "cargo", total_measure)
    super
  end

  def decrease_availability(value)
    check_volume!(value)
    super
  end

  private

  def check_volume!(value)
    raise "You don't have enough volume" if available_measure.zero? || (value + @occupied_measure) > @total_measure
  end
end
