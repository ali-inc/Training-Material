# Squares
side_length = 5

def calculate_area length
  length ** 2
end

def calculate_perimeter length
  length * 4
end

area = calculate_area side_length
perimeter = calculate_perimeter side_length

puts "Area: #{area} Perimeter: #{perimeter}"

# scale the square by a factor of 10
side_length *= 10

scaled_area = calculate_area side_length
scaled_perimeter = calculate_perimeter side_length

puts "Area: #{scaled_area} Perimeter: #{scaled_perimeter}"

