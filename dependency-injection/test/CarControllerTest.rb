require_relative '../CarController'
require_relative 'TestModule'
require 'minitest/autorun'

class CarControllerMock < CarController
  include TestModule
end

class CarControllerTest < Minitest::Test
  def test_simple
    assert_equal ["No car here"], CarControllerMock.new.list
  end
end
