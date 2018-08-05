# Write a function that multiplies two numbers and returns the result
# multiply
def multiply num1, num2
  num1 * num2
end

# Write a function that multiplies three numbers and returns the result
# add_three
def add_three num1, num2, num3
  num1 + num2 + num3
end

# Write a function that returns the smaller of 2 numbers
# smallest_number

def smallest_number num1, num2
  if num1 < num2
    num1
  else
    num2
  end
end

# Write a function that returns the largest of 3 numbers
# max_of_three
def max_of_three num1, num2, num3
  # if num1 < num2
  #   num1, num2 = num2, num1
  # end
  # if num1 < num3
  #   num1, num3 = num3, num1
  # end
  # num1
  [num1, num2, num3].max
end

# Write a function that returns the reverse a string
# reverse_string
def reverse_string input
  input.reverse
end

# write a function that returns the year of birth from an age
# disemvowel
def disemvowel input
  vowels = 'aeiouAEIOU'
  # output = ''
  # input.split('').each do |char|
  #   if !vowels.include?char
  #     output += char
  #   end
  # end
  # output
  # input.split('').delete_if {|char| vowels.include?char}
end

# write a fucntion that removes all ODD number from an array
# remove_odd
def remove_odd list
  # list.delete_if &:odd?
  list.delete_if {|x| x.odd?}
end

# write a fucntion that removes all EVEN number from an array
# remove_even
def remove_even list
  list.each do |num|
    if num%2 == 0
      list.delete(num)
    end
  end
end

# write a function that takes an array of strings and returns the string with the longest char langth
# longest_string
def longest_string list
  # longest = ''
  # list.each do |str|
  #   if str.length > longest.length
  #     longest = str
  #   end
  # end
  # longest
  list.max_by{|i| i.length}
  # list.max_by(&:length)
end

# discard the first 3 elements of an array,
# e.g. [1, 2, 3, 4, 5, 6] becomes [4, 5, 6]
def all_elements_except_first_3 list
  list[3, list.length - 3]
end

# turn an array (with an even number of elements) into a hash, by
# pairing up elements. e.g. ['a', 'b', 'c', 'd'] becomes
# {'a' => 'b', 'c' => 'd'}
def convert_array_to_a_hash list
  # output = {}
  # i = 0
  # while i < list.length do
  #   output[list[i]] = list[i+1]
  #   i += 2
  # end
  # output
  Hash[*list.flatten]
end

# Write a functino that takes any number and returns a value based on these rules

# But for multiples of three print "Fizz" instead of the number
# For the multiples of five print "Buzz".
# For numbers which are multiples of both three and five print "FizzBuzz".

def fizz_buzz n
  n%15==0 && "FizzBuzz" or n%5==0 && "Buzz" or n%3==0 && "Fizz" or n
  # ("FizzBuzz" if n%15==0) || ("Buzz" if n%5==0) || ("Fizz" if n%3==0) || n
end
