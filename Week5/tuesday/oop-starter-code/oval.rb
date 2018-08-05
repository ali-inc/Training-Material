include Math

class Oval

  attr_accessor  :a, :b

  def initialize (a, b)
    @a = a
    @b = b
  end

  def calculate_area
    @a * @b * Math::PI
  end

  def calculate_perimeter
    # 4 * @a * Math::E * (1 - (1.0 * @b ** @b) / @a ** @a)
    Math::PI * (@a + @b) * (3 * ((@a - @b)**2 / ((@a + @b)**2 * (Math.sqrt(-3 * ((@a - @b)**2 / (@a + @b)**2) + 4) + 10))) + 1)
  end

  def description
    puts "(Oval)\t\t Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

end
