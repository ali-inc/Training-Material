require_relative "../functions.rb"

describe "multiply" do
  it("should return the product of the two numbers passed") do
    expect(multiply(2,11)).to eq(22)
  end
end

describe "add_three" do
  it("should return the sum of the three numbers passed") do
    expect(add_three(5,10,9)).to eq(24)
    expect(add_three(1,1,1)).to eq(3)
  end
end

describe "smallest_number" do
  it("should return the smaller of two numbers") do
    expect(smallest_number(4, 6)).to eq(4)
    expect(smallest_number(8, 4)).to eq(4)
    expect(smallest_number(6, 12)).to eq(6)
  end
end

describe "max_of_three" do
  it ('should return an int') do
    expect(max_of_three(4, 6, 12)).to be_kind_of(Integer)
  end
  it("should return the largest of three values") do
    expect(max_of_three(4, 6, 12)).to eq(12)
    expect(max_of_three(12, 6, 4)).to eq(12)
    expect(max_of_three(6, 12, 4)).to eq(12)
  end
end

describe 'reverse_string' do
  it ('should return an string') do
    expect(reverse_string('hello niall')).to be_kind_of(String)
    expect(reverse_string('')).to be_kind_of(String)
  end
  it('should return the reverse of the string passed') do
    expect(reverse_string('Hello Niall')).to eq('llaiN olleH')
  end
end

describe 'disemvowel' do
  it ('should return an string') do
    expect(disemvowel('hello niall')).to be_kind_of(String)
    expect(disemvowel('')).to be_kind_of(String)
  end
  it('should return a given string with all the vowels stripped out') do
    expect(disemvowel('this is sparta')).to eq('ths s sprt')
  end
  it('should return a string not containing any vowles') do
    expect(disemvowel('this is sparta')).to_not include('a', 'e', 'i', 'o', 'u')
    expect(disemvowel('this is sparta')).to_not include('A', 'E', 'I', 'O', 'U')
  end
end

describe 'remove_odd' do
  it ('should return an array') do
    expect(remove_odd([1,2,3,4,5])).to be_kind_of(Array)
    expect(remove_odd([])).to be_kind_of(Array)
  end
  it ('should return an array containing only even number') do
    expect(remove_odd([1,2,3,4,5])).to_not include(be_odd)
  end
end

describe 'remove_even' do
  it ('should return an array') do
    expect(remove_even([1,2,3,4,5])).to be_kind_of(Array)
    expect(remove_even([])).to be_kind_of(Array)
  end
  it ('should return an array containing only odd number') do
    expect(remove_even([1,2,3,4,5])).to include(be_odd)
  end
end


describe 'longest_string' do
  it ('should return a string') do
    expect(longest_string(['one', 'two', 'Three'])).to be_kind_of(String)
  end
  it ('should return an array containing only odd number') do
    expect(longest_string(['one', 'two', 'Three'])).to eq('Three')
  end
end

describe 'all_elements_except_first_3' do
  it 'should return an array containing all elements except the first three' do
    n = all_elements_except_first_3 [1, 2, 3, 4, 5, 6, 7]
    expect(n).to eq [4, 5, 6, 7]
  end
end

describe 'convert_array_to_a_hash' do
  it 'should return an a array converted from a hash' do
      n = convert_array_to_a_hash ['a', 'b', 'c', 'd']
      expect(n).to eq({'a' => 'b', 'c' => 'd'})
  end
end

describe 'fizz_buzz' do
  it ('should return a string if rules are matched') do
    expect(fizz_buzz(6)).to be_kind_of(String)

  end
  it ('should return fiz if number is divisible by 3') do
    expect(fizz_buzz(3)).to eq('Fizz')
    expect(fizz_buzz(6)).to eq('Fizz')
    expect(fizz_buzz(9)).to eq('Fizz')
  end
  it ('should return buzz is number is divisible by 5') do
    expect(fizz_buzz(5)).to eq('Buzz')
    expect(fizz_buzz(10)).to eq('Buzz')
    expect(fizz_buzz(20)).to eq('Buzz')
  end
  it ('should return fizzbuzz is number is divisible by 3 and 5') do
    expect(fizz_buzz(15)).to eq('FizzBuzz')
    expect(fizz_buzz(30)).to eq('FizzBuzz')
  end
  it ('should return the given number if it is NOT divisible by 3 and 5') do
    expect(fizz_buzz(1)).to be_kind_of(Integer)
    expect(fizz_buzz(13)).to eq(13)
    expect(fizz_buzz(11)).to eq(11)
  end
end
