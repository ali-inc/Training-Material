require 'spec_helper'
require_relative '../lib/punk_api'

describe PunkAPI do

  before(:all) do
    @beers = PunkAPI.new
    @beer = @beers.get_single_beer(1)
    @all_beers = @beers.get_all_beers
  end

  context 'check api is operational' do

    it "should have a 200 code for a single beer" do
      expect(@beer.code).to eq 200
    end

    it "should have a message ok" do
      expect(@beer.message).to eq 'OK'
    end

    it "should have a 200 code for all beer" do
      expect(@all_beers.code).to eq 200
    end

    it "should have a message ok" do
      expect(@all_beers.message).to eq 'OK'
    end

  end

  context 'check data types' do

    it "should have a name that is a string" do
      expect(@beers.punk_parse[0]['name']).to be_kind_of String
    end

    it "should have a abv which is a float" do
      expect(@beers.punk_parse[0]['abv']).to be_kind_of Float
    end

  end

end
