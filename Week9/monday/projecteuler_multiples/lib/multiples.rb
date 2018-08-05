class Multiples


  # returns true if a num is divisible by divisor and false otherwise
  def is_divisible num, divisor
    num % divisor == 0
  end


  # returns an array containing all numbers between num1 (including) and num2 (excluding) that are divisible by divisor
  def multiples num1, num2, divisor
    x = []
    (num1...num2).each do |i|
      if is_divisible i, divisor
        x << i
      end
    end
    x
  end


  # returns the sum of multiples of all given divisors (*divisor) between num1 (including) and num2 (excluding)
  def sum num1, num2, *divisor
    multiplesList = []
    n = divisor.length
    (divisor.length).times do |i|
      multiplesList += multiples num1, num2, divisor[i]
    end
    multiplesList.uniq.sum
  end


end
