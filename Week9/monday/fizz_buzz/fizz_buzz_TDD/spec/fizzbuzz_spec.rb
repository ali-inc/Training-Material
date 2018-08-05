require_relative 'spec_helper'

describe 'Fizzbuzz should print Fizz, Buzz and FizzBuzz for multiples of 3, 5 and 15' do

  before(:each) do
    @fizzbuzz = FizzBuzz.new
  end

  it "should print FizzBuzz for multiples of 15" do
    expect(@fizzbuzz.fizzbuzz(15)).to eq 'fizzbuzz'
  end

  it "should print Fizz for multiples of 3" do
    expect(@fizzbuzz.fizzbuzz(3)).to eq 'fizz'
  end

  it "should print Buzz for multiples of 5" do
    expect(@fizzbuzz.fizzbuzz(5)).to eq 'buzz'
  end

  it "should print the number for non-multiples of 3 and 5" do
    expect(@fizzbuzz.fizzbuzz(2)).to eq 2
  end

  it "should print the correct array for range of numbers" do
    expect(@fizzbuzz.fizzbuzzRange(10,15)).to eq ['buzz', 11, 'fizz', 13, 14, 'fizzbuzz']
  end

end
