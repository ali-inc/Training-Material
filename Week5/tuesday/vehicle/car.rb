require_relative "roadVehicle.rb"
require_relative "make/make.rb"

class Car < RoadVehicle

  include Make

  def drive
    puts 'I travel on roads'
  end

  def number_of_wheels
    QuadWheels.wheels
  end

end

ford = Car.new
ford.drive
ford.number_of_wheels
