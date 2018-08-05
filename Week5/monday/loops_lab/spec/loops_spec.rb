require_relative "../loops.rb"

describe "reverse_array_of_strings" do
  it("should return an array") do
    expect(reverse_array_of_strings(['one' , 'two' , 'three'])).to be_kind_of(Array)
  end
  it("should return the words reversed") do
    expect(reverse_array_of_strings(['one' , 'two' , 'three'])).to eq(['eno' , 'owt' , 'eerht'])
  end
end

describe "even_numbers_less_than" do
  it("should return an array") do
    expect(even_numbers_less_than(10)).to be_kind_of(Array)
  end
  it("should return the numbers less than the given number that are even") do
    expect(even_numbers_less_than(10)).to eq([0,2,4,6,8])
    expect(even_numbers_less_than(14)).to eq([0,2,4,6,8,10,12])
  end
end

describe "average" do
  it("should return an array") do
    expect(average([1,6,2,3,4])).to be_kind_of(Float)
  end
  it("should return the average of the numbers in an array") do
    expect(average([8,2,3,3])).to eq(4)
    expect(average([11,2,5,3])).to eq(5.25)
    expect(average([1,2,4,5])).to eq(3.0)
  end
end

