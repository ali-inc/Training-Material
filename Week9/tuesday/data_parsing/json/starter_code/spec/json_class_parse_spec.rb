require 'spec_helper'

describe 'Testing the exchange rates' do

  before(:all) do
    @exchange_rates = ParseJson.new('json_exchange_rates.json')
  end

  it 'should be a Hash' do
    expect(@exchange_rates.json_file).to be_instance_of Hash
  end

  it 'should contain the base as EUR' do
    expect(@exchange_rates.json_file["base"]).to eq 'EUR'
  end

  it "should have a date string" do
    # expect(@exchange_rates.json_file["date"]).to respond_to(:length) #!!!
    expect(@exchange_rates.json_file["date"]).to be_kind_of String
  end

  it "should contain 31 rates" do
    expect(@exchange_rates.json_file["rates"].length).to eq 31
  end

  it "all rates should be Floats" do
    @exchange_rates.json_file["rates"].each_value do |value|
      expect(value).to be_kind_of Float
    end
  end

end
