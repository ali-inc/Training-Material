
module Make

  def self.info
    puts 'Make defines the manufacturer of a vehicle'
  end

  class BiWheels
    def self.wheels
      puts 'Has 2 wheels'
    end
  end

  class QuadWheels
    def self.wheels
      puts 'Has 4 wheels'
    end
  end

end
