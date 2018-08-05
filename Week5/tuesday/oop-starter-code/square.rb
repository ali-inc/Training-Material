class Square

  attr_accessor  :side_length

  def initialize (side_length)
    @side_length = side_length
  end

  def calculate_area
    @side_length ** 2
  end

  def calculate_perimeter
    @side_length * 4
  end

  def description
    puts "(Square) Area: #{calculate_area} Perimeter: #{calculate_perimeter}"
  end

end
