class Rectangle

  attr_accessor  :width, :height

  def initialize (width, height)
    @width = width
    @height = height
  end

  def calculate_area
    @width * @height
  end

  def calculate_perimeter
    (@width + @height) * 2
  end

  def description
    puts "(Rectangle)\t Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

end
