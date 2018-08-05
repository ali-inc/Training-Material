class FizzBuzz

  def fizzbuzz num
    if num % 15 == 0
      'fizzbuzz'
    elsif num % 5 == 0
      'buzz'
    elsif num % 3 == 0
      'fizz'
    else
      num
    end
  end

  def fizzbuzzRange num1, num2
    x = []
    (num1..num2).each do |i|
      x.push(fizzbuzz i)
    end
    x
  end

end
