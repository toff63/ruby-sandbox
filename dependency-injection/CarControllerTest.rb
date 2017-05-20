require_relative 'CarController'

module TestModule
  def initialize
    @car_model = CarModelMock.new
  end

  def car_model
    @car_model
  end
end

class CarModelMock
  def save(car)
    puts 'I will do nothing ;p'
  end

  def cars
    ['No car here']
  end
end

class CarControllerMock < CarController
  include TestModule
end
