require_relative "../animal.rb"
require_relative "../animal_types/mammals.rb"

class Dog < Animal

  include Mammals

  def speak
    puts 'Woof!!'
  end

  def number_of_legs
    Quadruped.legs
  end

end

jack = Dog.new

jack.speak

jack.number_of_legs
