i = 0

#loop
# loop do
#   puts "I am still talking to you"
#   i += 1
#   if i > 5
#     break
#   end
# end


# #while
# while i < 10 do
#   puts "while : #{i}"
#   i+=1
# end


#do while
# begin
#   puts "do while : #{i}"
#   i+=1
# end while i < 10


#until
# until i >= 10 do
#   puts "until : #{i}"
#   i+=1
# end


#do until
# begin
#   puts "do until : #{i}"
#   i+=1
# end until i >= 10


#for
# for j in 0..5
#   puts "for loops are great: #{j}"
# end


#each
# (0..5).each do |i|
#   puts i
# end

#each_with_index
# array = [1,45,76,3,-9,0]
# array.each_with_index do |item, index|
#   puts "#{item} can be found at #{index}"
# end


#map

more_words = ['one', 'two', 'three']
#
# reversed_words = more_words.map do |word|
#   word.reverse
# end


# more_words.map do |word|
#   word.reverse!
# end
#
# puts more_words


some_numbers = [1,4,5,2,3,1,2,4]

sum = (1..5).reduce 0 do |total, number|
  total + number
end

puts sum

quick_some = some_numbers.reduce(0, :+)

puts quick_some
