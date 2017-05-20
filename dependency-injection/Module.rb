require 'singleton'

module MainModule
  def initialize
    @car_model = CarModel.instance
  end

  def car_model
    @car_model
  end

end


