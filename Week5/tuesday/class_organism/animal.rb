require_relative "living_organism.rb"

class Animal < LivingOrganism

  def self.traits
    puts 'Animals can breath, eat, drink, speak and reproduce'
  end

  def self.breath
    puts 'inhale and exhale'
  end

  def self.eat
    puts 'nom nom nom'
  end

  def self.speak
    puts 'Hello World!!'
  end

  def self.reproduce
    puts 'the fun one'
  end

end

# animal1 = Animal.new

# Animal.speak
# Animal.alive
