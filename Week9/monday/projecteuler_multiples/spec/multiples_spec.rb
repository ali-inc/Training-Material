require_relative 'spec_helper'
require_relative '../lib/multiples'

describe 'multiples should return the sum of multiples of 3 or 5 below the given number' do

  before(:each) do
    @multiples = Multiples.new
  end

  it "should return true if a number is divisible by a divisor and false otherwise" do
    expect(@multiples.is_divisible(12,3)).to eq true
    expect(@multiples.is_divisible(13,3)).to eq false
  end

  it "should return an ordered array of all divisible values by divisor between 2 numbers" do
    expect(@multiples.multiples(1,15,3)).to eq [3, 6, 9, 12]
  end

  it "should return the sum of multiples of 3 or 5 below the given number" do
    expect(@multiples.sum(1,10,3,5)).to eq 23
  end

  it "should return the sum of multiples of 3 or 5 below the given number" do
    expect(@multiples.sum(1,11,3,5)).to eq 33
  end

end
