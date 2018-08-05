require_relative 'calculator'

describe Calculator do
  it "should add given two numbers" do
    calculator = Calculator.new
    result = calculator.add(1,2)
    expect(result).to eq 3
  end
end
