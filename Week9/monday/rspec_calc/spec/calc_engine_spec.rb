# require_relative 'spec_helper'

describe 'Testing basic calculator functions' do

  before(:all) do
    @num1 = 5
    @num2 = 3
  end

  before(:each) do
    @calc = CalcEngine.new
  end

  it "should correctly add 2 numbers" do
    expect(@calc.add(@num1, @num2)).to eq 8
  end

  it "should correctly subtract 2 numbers" do
    expect(@calc.subtract(5,3)).to eq 2
  end

  it "should correctly multiply 2 numbers" do
    expect(@calc.multiply(5,3)).to eq 15
  end

  it "should correctly divide 2 numbers" do
    expect(@calc.divide(5,3)).to eq 1
  end

end
