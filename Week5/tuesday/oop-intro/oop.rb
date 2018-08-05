require_relative 'person.rb'

person1 = Person.new 'Bob', 'Male', 50, 1.86, 85
person2 = Person.new('jane','Female', 32, 2.35, 120)

puts person1.description
puts person2.description

puts person1.sex
