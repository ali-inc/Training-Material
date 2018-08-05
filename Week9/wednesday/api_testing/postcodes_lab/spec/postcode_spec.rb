require 'spec_helper'

describe Postcodesio do

  context 'requesting information on a single postcode works correctly' do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_single_postcode('yo317ss') #input a postcode
    end

    it "should respond with a status message of 200" do
      expect(@response["status"]).to eq 200
    end

    it "should have a results hash" do
      expect(@response).to be_kind_of Hash
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

  context "multiple postcodes validation" do

    before(:all) do
      @postcodesio = Postcodesio.new
      @response = @postcodesio.get_multiple_postcodes(["OX49 5NU", "M320JG", "NE301DP"]) #Add in array of postcodes
    end

    it "should respond with a status message of 200" do
      expect(@response["status"]).to eq 200
    end

    it "should return the first query as the first postcode in the response" do
      expect(@response["result"][0]["query"].gsub(' ','')).to eq @response["result"][0]["result"]["postcode"].gsub(' ','')
    end

    it "should return the second query as the second postcode in the response" do
      expect(@response["result"][1]["query"].gsub(' ','')).to eq @response["result"][1]["result"]["postcode"].gsub(' ','')
    end

    it "should have a results hash" do
      expect(@response).to be_kind_of Hash
    end

    it "should return a postcode between 5-7 in length"  do
      @response["result"].each do |item|
        expect(item["result"]["postcode"].gsub(' ','').length).to be_between(5, 7)
      end
    end

    it "should return an quality key integer between 1-9" do
      @response["result"].each do |item|
        expect(item["result"]["quality"].to_i).to be_between(1, 9)
      end
    end

    it "should return an ordnance survey eastings value as integer" do
      @response["result"].each do |item|
        expect(item["result"]["eastings"]).to be_kind_of Integer
      end
    end

    it "should return an ordnance survey northings value as integer" do
      @response["result"].each do |item|
        expect(item["result"]["northings"]).to be_kind_of Integer
      end
    end

    it "should return a country which is one of the four constituent countries of the UK" do
      @response["result"].each do |item|
        expect(["England","Scotland","Wales","Northern Ireland"]).to include item["result"]["country"]
      end
    end

    it "should return a string value for NHS authority " do
      @response["result"].each do |item|
        expect(item["result"]["nhs_ha"]).to be_kind_of String
      end
    end

    it "should return a longitude float value" do
      @response["result"].each do |item|
        expect(item["result"]["longitude"]).to be_kind_of Float
      end
    end

    it "should return a latitude float value" do
      @response["result"].each do |item|
        expect(item["result"]["latitude"]).to be_kind_of Float
      end
    end

    it "should return a parliamentary constituency string" do
      @response["result"].each do |item|
        expect(item["result"]["parliamentary_constituency"]).to be_kind_of String
      end
    end

    it "should return a european_electoral_region string" do
      @response["result"].each do |item|
        expect(item["result"]["european_electoral_region"]).to be_kind_of String
      end
    end

    it "should return a primary_care_trust string" do
      @response["result"].each do |item|
        expect(item["result"]["primary_care_trust"]).to be_kind_of String
      end
    end

    it "should return a region string" do
      @response["result"].each do |item|
        expect(item["result"]["region"]).to be_kind_of String
      end
    end

    it "should return a parish string" do
      @response["result"].each do |item|
        expect(item["result"]["parish"]).to be_kind_of String
      end
    end

    it "should return a lsoa string" do
      @response["result"].each do |item|
        expect(item["result"]["lsoa"]).to be_kind_of String
      end
    end

    it "should return a msoa string" do
      @response["result"].each do |item|
        expect(item["result"]["msoa"]).to be_kind_of String
      end
    end
    # admin ward and county are not documented however tested below

    it "should return a admin_district string" do
      @response["result"].each do |item|
        expect(item["result"]["admin_district"]).to be_kind_of String
      end
    end

    it "should return a incode string of three characters" do
      @response["result"].each do |item|
        expect(item["result"]["incode"]).to be_kind_of String
        expect(item["result"]["incode"].length).to eq 3
      end
    end

    it "should return a outcode string of 3-4 characters" do
      @response["result"].each do |item|
        expect(item["result"]["outcode"]).to be_kind_of String
        expect(item["result"]["outcode"].length).to be_between 3, 4
      end
    end

    # it "should have a results hash" do
    #   pending
    # end
    #
    # it "should return a postcode between 5-7 in length"  do
    #   pending
    # end
    #
    # it "should return an quality key integer between 1-9" do
    #   pending
    # end
    #
    # it "should return an ordnance survey eastings value as integer" do
    #   pending
    # end
    #
    # it "should return an ordnance survey eastings value as integer" do
    #   pending
    # end
    #
    # it "should return a country which is one of the four constituent countries of the UK" do
    #   pending
    # end
    #
    # it "should return a string value for NHS authority " do
    #   pending
    # end
    #
    # it "should return a longitude float value" do
    #   pending
    # end
    #
    # it "should return a latitude float value" do
    #   pending
    # end
    #
    # it "should return a parliamentary constituency string" do
    #   pending
    # end
    #
    # it "should return a european_electoral_region string" do
    #   pending
    # end
    #
    # it "should return a primary_care_trust string" do
    #   pending
    # end
    #
    # it "should return a region string" do
    #   pending
    # end
    #
    # it "should return a parish string" do
    #   pending
    # end
    #
    # it "should return a lsoa string" do
    #   pending
    # end
    #
    # it "should return a msoa string" do
    #   pending
    # end
    # # admin ward and county are not documented however tested below
    #
    # it "should return a admin_district string" do
    #   pending
    # end
    #
    # it "should return a incode string of three characters" do
    #   pending
    # end
    #
    # it "should return a msoa string" do
    #   pending
    # end
    #
    # it "should return a incode string of 3-4 characters" do
    #   pending
    # end

  end


end
