require_relative 'spec_helper'
require_relative '../lib/fib'

describe "Test fibonacci function" do

  before(:each) do
    @fib = Fibonacci.new
  end

  it "should return the sum of 2 numbers" do
    expect(@fib.fibFinder(1, 2)).to eq 3
  end

  it "should return even values from an array" do
    expect(@fib.even([1,2,3,4,5])).to eq [2, 4]
    expect(@fib.even([1,2,3,5,8])).to eq [2, 8]
  end

  it "should return all fib numbers less than a given value" do
    expect(@fib.fibSequence(1, 2, 10)).to eq [1,2,3,5,8]
  end

  it "should return sum of even fibs less than a value" do
    expect(@fib.sumEvenFib(1, 2, 10)).to eq 10
  end

end
