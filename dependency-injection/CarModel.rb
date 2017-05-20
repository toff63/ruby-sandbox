class CarModel
  include Singleton

  def initialize
    @car_store ||= []
  end

  def save(car)
    @car_store << car
  end

  def cars
    @car_store
  end
end

