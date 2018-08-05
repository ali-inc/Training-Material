include Math

class Circle

  attr_accessor  :radius

  def initialize (radius)
    @radius = radius
  end

  def calculate_area
    @radius ** 2 * Math::PI
  end

  def calculate_perimeter
    @radius * 2 * Math::PI
  end

  def description
    puts "(Circle)\t Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

end
