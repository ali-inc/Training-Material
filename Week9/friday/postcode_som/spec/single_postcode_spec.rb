require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new.single_postcode_service
      @postcodesio.get_single_postcode('yo317ss') #input a postcode
    end

    it "should respond with a status message of 200" do
      # expect(@response["status"]).to eq 200
      expect(@postcodesio.get_status).to eq 200
    end

    it "should have a results hash" do
      expect(@postcodesio.get_result).to be_kind_of Hash
    end

    it "should return a postcode between 5-7 in length"  do
      expect(@response["result"]["postcode"].gsub(' ','').length).to be_between(5, 7)
    end

    it "should return an quality key integer between 1-9" do
      expect(@response["result"]["quality"].to_i).to be_between(1, 9)
    end

    it "should return an ordnance survey eastings value as integer" do
      expect(@response["result"]["eastings"]).to be_kind_of Integer
    end

    it "should return an ordnance survey northings value as integer" do
      expect(@response["result"]["northings"]).to be_kind_of Integer
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      expect(["England","Scotland","Wales","Northern Ireland"]).to include @response["result"]["country"]
    end

    it "should return a string value for NHS authority " do
      expect(@response["result"]["nhs_ha"]).to be_kind_of String
    end

    it "should return a longitude float value" do
      expect(@response["result"]["longitude"]).to be_kind_of Float
    end

    it "should return a latitude float value" do
      expect(@response["result"]["latitude"]).to be_kind_of Float
    end

    it "should return a parliamentary constituency string" do
      expect(@response["result"]["parliamentary_constituency"]).to be_kind_of String
    end

    it "should return a european_electoral_region string" do
      expect(@response["result"]["european_electoral_region"]).to be_kind_of String
    end

    it "should return a primary_care_trust string" do
      expect(@response["result"]["primary_care_trust"]).to be_kind_of String
    end

    it "should return a region string" do
      expect(@response["result"]["region"]).to be_kind_of String
    end

    it "should return a parish string" do
      expect(@response["result"]["parish"]).to be_kind_of String
    end

    it "should return a lsoa string" do
      expect(@response["result"]["lsoa"]).to be_kind_of String
    end

    it "should return a msoa string" do
      expect(@response["result"]["msoa"]).to be_kind_of String
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      expect(@response["result"]["admin_district"]).to be_kind_of String
    end

    it "should return a incode string of three characters" do
      expect(@response["result"]["incode"]).to be_kind_of String
      expect(@response["result"]["incode"].length).to eq 3
    end

    it "should return a msoa string" do
      expect(@response["result"]["msoa"]).to be_kind_of String
    end

    it "should return a outcode string of 3-4 characters" do
      expect(@response["result"]["outcode"]).to be_kind_of String
      expect(@response["result"]["outcode"].length).to be_between(3,4)
    end
  end

end
