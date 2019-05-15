require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'

class ApartmentTest < Minitest::Test

  def setup
    @building = Building.new
  end

  def test_building_exists
    assert_instance_of Building, @building
  end

  def test_building_has_attributes
    assert [], @building.units
  end    
end
