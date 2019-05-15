class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    ave = @units.map do |apartment|
      apartment.monthly_rent
    end
    ave.sum.to_f / ave.length
  end

end
