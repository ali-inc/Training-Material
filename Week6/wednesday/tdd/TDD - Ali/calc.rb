
# A calculator class with a multiply method that avoids using '*' operator

class Calc
  def multiply a, b
    a, b = b, a if a > b
    result = 0
    a.times do
      result += b
    end
    result
  end
end
