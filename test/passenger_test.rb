gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/passenger'

class PassengerTest < Minitest::Test

  def setup
    @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
  end

  def test_it_exists
    assert_instance_of Passenger, @charlie
  end

  def test_it_has_attributes

    assert_equal "Charlie", @charlie.name
    assert_equal 18, @charlie.age
  end

  def test_adult?
    assert_equal true, @charlie.adult?
    assert_equal false, @taylor.adult?
  end

  def test_drive
    assert_equal false, @charlie.driver?

    @charlie.drive
    assert_equal true, @charlie.driver?
  end
end
