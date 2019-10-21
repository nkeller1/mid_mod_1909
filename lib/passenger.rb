require 'pry'
class Passenger

  attr_reader :name, :age, :driver

  def initialize(passenger_params)
    @name = passenger_params["name"]
    @age = passenger_params["age"]
    @driver = false
  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end

end
