class Fibonacci

  def fibFinder num1, num2
    num1 + num2
  end

  def even arr
    result = []
    arr.each do |i|
      if i.even?
        result << i
      end
    end
    result
  end

  def fibSequence num1, num2, limit
    sum = fibFinder num1, num2
    fibarr = [num1, num2]
    while sum < limit
      fibarr << sum
      num1, num2 = num2, sum
      sum = fibFinder num1, num2
    end
    fibarr
  end

  def sumEvenFib num1, num2, limit
    even(fibSequence num1, num2, limit).sum
  end

end

f = Fibonacci.new
puts f.sumEvenFib 1, 2, 4000000
