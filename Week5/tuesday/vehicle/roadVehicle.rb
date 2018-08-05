require_relative "vehicle.rb"

class RoadVehicle < Vehicle

  def self.traits
    puts 'A road vehicle moves on streets and roads'
  end

  def self.fuel
    puts 'burns fuel to move'
  end

end
