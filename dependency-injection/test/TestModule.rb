require_relative 'CarModelMock'

module TestModule
  def initialize
    @car_model = CarModelMock.new
  end

  def car_model
    @car_model
  end
end


