require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'

class BuildingTest < Minitest::Test

  def setup
    @jessie = Renter.new("Jessie")
    @spencer = Renter.new("Spencer")
    @a1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @a2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @building = Building.new
  end

  def test_building_exists
    assert_instance_of Building, @building
  end

  def test_building_has_attributes
    assert [], @building.units
  end

  def test_building_can_add_units
    @building.add_unit(@a1)
    @building.add_unit(@a2)
    assert_equal [@a1, @a2], @building.units
  end

  def test_building_can_find_average_rent
    @building.add_unit(@a1)
    @building.add_unit(@a2)
    assert_equal 1099.5, @building.average_rent
  end

  def test_for_building_with_highest_rent
    @a2.add_renter(@spenser)
    @building.add_unit(@a1)
    @building.add_unit(@a2)
    assert_equal @spenser, @building.renter_with_highest_rent
    # @a1.add_renter(@jessie)
    # assert_equal @jessie, @building.renter_with_highest_rent
  end

end
