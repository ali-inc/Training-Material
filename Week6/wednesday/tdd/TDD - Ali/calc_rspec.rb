
# A set of test case for testing the Calc class
# run this test with 'rspec calc_rspec.rb'

require_relative 'calc.rb'

describe Calc do
  calc = Calc.new

  it "should multiply 2 given numbers" do

    result = calc.multiply(2, 3)
    expect(result).to eq 6

  end

  it "should multiply 2 given numbers (large) " do

    result = calc.multiply(20000000, 3)
    expect(result).to eq 60000000

  end
end
