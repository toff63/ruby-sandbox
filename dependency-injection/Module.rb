require_relative 'CarModel'

module MainModule
  def initialize
    @car_model = CarModel.new
  end
  def car_model
    @car_model
  end

end


