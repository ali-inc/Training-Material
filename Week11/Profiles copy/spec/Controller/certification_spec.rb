require 'rails_helper'
Certification.all.each do |cert|
  cert.destroy
end
4.times do |i|
  @cert = Certification.new({"title" => "title#{i}", "description" => "description#{i}", "user_id" => "#{i}"})
  @cert.save
end
describe "CONTROLLER -- Testing certification response" do

  context 'request all certifications checking types' do
    before (:all) do
      @certs = Certification.all
    end
    it 'should return response which is not nil' do
      expect(@certs).to_not be nil
    end
    it 'should return an array of summary strings' do
      @certs.each do |cert|
        expect(cert.title).to be_kind_of String
      end
    end
    it 'should return an array of summary strings' do
      @certs.each do |cert|
        expect(cert.description).to be_kind_of String
      end
    end
    it 'should return an array of user_id strings' do
      @certs.each do |cert|
        expect(cert.user_id).to be_kind_of String
      end
    end
  end
  context 'request all certifications checking types' do
    before (:all) do
      @certs = Certification.where(user_id: 2)
    end
    it "should return certifications belonging to 2" do
      @certs.each do |cert|
        expect(cert.user_id).to eq "2"
      end
    end
  end
  context 'request all certifications checking types' do

    before (:all) do
      @certs = Certification.all
    end

    it 'should be able to update a certification' do
      i = 0
      expect(@certs[i].update({"title" => "title#{i}", "description" => "NEWdescription#{i}", "user_id" => "i"})).to eq true
      expect(@certs[i].description).to eq "NEWdescription0"
    end

    it "should be able to destroy a certification" do
      id = @certs[0].id
      @cert = Certification.find(id)
      @cert.destroy
      begin
        @cert = Certification.find(id)
      rescue
        @cert = false
      end
      expect(@cert).to eq false
    end

  end
end
