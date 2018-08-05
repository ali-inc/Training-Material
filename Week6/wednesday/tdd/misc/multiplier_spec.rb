class Multiplier

  def multiply a, b
    a, b = b, a if a > b
    result = 0
    a.times do
      result += b
    end
    result
  end

end


describe Multiplier do

  multiplier = Multiplier.new

  it "should multiply 2 given numbers" do
    result = multiplier.multiply 2, 3
    expect(result).to eq 6
  end

  it "should multiply 2 given numbers (large)" do
    result = multiplier.multiply 20000000, 3
    expect(result).to eq 60000000
  end

end
