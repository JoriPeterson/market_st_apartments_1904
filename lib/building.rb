class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    rents = @units.map do |apartment|
      apartment.monthly_rent
    end
    ave = rents.sum.to_f / rents.length
  end

  def renter_with_highest_rent
    highest = @units.max_by do |apartment|
      apartment.monthly_rent

# require 'pry'; binding.pry
      highest.map do |renter|
        highest.renter
      end
    end
  end

end
