# return an array of reversed words
def reverse_array_of_strings words
  # words.map do |word|
  #   word.reverse
  # end

  words.map {|word| word.reverse}

  # words.map(&:reverse)
end


# return all the even numbers less than the given number
def even_numbers_less_than num
  # (0...num).to_a.reject {|x| x.odd?}

  (0...num).to_a.delete_if {|x| x.odd?}
end


# return the average of all numbers in an array
def average numbers
  # sum = numbers.reduce 0 do |total, number|
  #   total + number
  # end
  # sum.to_f / numbers.length

  numbers.reduce(:+) / numbers.length.to_f
end
