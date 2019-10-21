gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/passenger'
require './lib/vehicle'
require 'pry'

class VehicleTest < MiniTest::Test

  def setup
    @vehicle = Vehicle.new("2001", "Honda", "Civic")
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @jude = Passenger.new({"name" => "Jude", "age" => 20})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  def test_it_exists

    assert_instance_of Vehicle, @vehicle
  end

  def test_attributes

    assert_equal "2001", @vehicle.year
    assert_equal "Honda", @vehicle.make
    assert_equal "Civic", @vehicle.model
  end

  def test_speed
    assert_equal false, @vehicle.speeding?

    @vehicle.speed
    assert_equal true, @vehicle.speeding?
  end

  def test_if_passengers_array_exists
    assert_equal  [], @vehicle.passengers
  end

  def test_if_passengers_can_be_added
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    @vehicle.add_passenger(@taylor)

    assert_equal [@charlie, @jude, @taylor], @vehicle.passengers
  end

  def test_num_adults
    @vehicle.add_passenger(@charlie)
    @vehicle.add_passenger(@jude)
    
    assert_equal 2, @vehicle.num_adults
  end

end
