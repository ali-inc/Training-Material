# multiple of 3 is fizz
# multiple of 5 is buzzz
# multiple of 15 is fizzbuzz

x = []

(1..100).each do |i|
  if i % 15 == 0
    x.push 'fizzbuzz'
  elsif i % 5 == 0
    x.push 'buzz'
  elsif i % 3 == 0
    x.push 'fizz'
  else
    x.push i
  end
end

puts x
