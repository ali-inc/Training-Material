require_relative 'calc'

describe Calc do
  calc = Calc.new

  it "should add 2 given numbers" do

    result = calc.add(2, 3)
    expect(result).to eq(5)

  end

  it "should divide 2 given numbers" do

    result = calc.div(7, 3)
    expect(result).to eq(2)

  end

  # it "should return nil if numebr divided by 0" do
  #
  #   result = calc.div(7, 0)
  #   expect(result).to be("asdasasd")
  #
  # end

end
