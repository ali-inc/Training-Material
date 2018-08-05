class Triangle

  attr_accessor  :base, :height

  def initialize (base, height)
    @base = base
    @height = height
  end

  def calculate_area
    @base * @height / 2.0
  end

  # def calculate_perimeter
  #   (@base + @height) * 2
  # end

  def description
    puts "(Triangle)\t Area: #{calculate_area}" # Perimeter: #{calculate_perimeter}"
  end

end
