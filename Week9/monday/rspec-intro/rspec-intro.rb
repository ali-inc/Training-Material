require 'rspec'

describe 'This is the description of product you are going to test' do

  context 'context is merely another way to break out your code and description' do

    it 'should add 2 numbers together' do
      a = 1
      b = 16
      expect(a + b).to eq 17
    end

    it ' c should be true' do
      c = true
      expect(c).to be false
    end

  end

end
