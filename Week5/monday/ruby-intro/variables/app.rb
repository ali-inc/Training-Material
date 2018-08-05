our_first_variable = "Hello world!!"

puts our_first_variable.class

our_first_number = 10

our_second_number = 232.43

puts our_first_number.class
puts our_second_number.class

first_name = "rob"
last_name = "Whitehouse"
my_age = 27.92
eye_color = "blue"


description =  "My name is #{first_name} #{last_name}. I am #{my_age} and I have #{eye_color} eyes"
puts description


puts my_age.floor   #round down
puts my_age.ceil    #round up
puts my_age.round   #round to nearest int


array = [0,1,"rob",3.56]

puts array
print array

puts array.first  #returns the first value
puts array.last   #returns the last value
puts array.length #returns the length
puts array.pop    #returns the last and removes it
puts array.shift  #returns the first and removes it
puts array.push 'rocks'

print array
puts ''

my_name = "Rob"
my_other_name = :Rob

puts my_name
puts my_other_name

person = {
  :name => "Rob",     # hash rocket
  :age => "27",
  :eye_color => "blue"
}

puts person[:name]
puts person[:age]
puts person[:eye_color]


person = {
  name: "rob",
  age: 27
}

puts person[:age]

word = "super"

puts word.start_with?("s")
puts word.start_with?('a')

x = nil

puts x.class
