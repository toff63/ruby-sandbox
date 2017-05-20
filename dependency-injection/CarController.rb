require_relative 'Module'

class CarController
  include MainModule

  def create_car(name)
    car_model().save(name)
  end

  def list
    @car_model.cars
  end
end
