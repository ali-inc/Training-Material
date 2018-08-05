new_hash = Hash[a: 2, b: 3]

p new_hash.keys
p new_hash.values
p new_hash[:a]


hash_3 = {}

p hash_3

hash_5 = Hash['a' => 2, 'b' => '3', 'c' => 4]

p hash_5['b']

zoo = {
  :mammals => 3,
  :reptile => 10,
  :marsupial => 1,
  :birds => 37
  }

p zoo.keys
p zoo[:birds]

#Easy sum solution
p zoo.values.sum

#Loops
zoo.each_key { |key| p key}
zoo.each_value { |value| p value}
zoo.each do |key, value|
  p "#{key}, #{value}"
end
