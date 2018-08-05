
module Mammals

  def self.common_mammal_traits
    puts 'Mammals are warm blooded and have vertebrae'
  end

  class CommonTraits
      def feed_young
        puts 'all mammals feed their young with milk (sometimes custard)'
      end
  end

  class Biped < CommonTraits
    def self.legs
      puts 'I have 2 legs'
    end
  end

  class Quadruped < CommonTraits
    def self.legs
      puts 'I have 4 legs'
    end
  end

end

# platypus = Mammals::CommonTraits.new
#
# platypus.feed_young
#
# Mammals::Biped.legs
