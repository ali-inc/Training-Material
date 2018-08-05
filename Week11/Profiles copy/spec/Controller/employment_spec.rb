require 'rails_helper'
params = {"start_date"=>"2018-07-06", "end_date"=>"2018-07-23", "company"=>"asfoiagisu", "role"=>"absofua", "descript
ion"=>"asfhasihoihfas hifiahsfohajps"}

Employment.all.each do |employ|
  employ.destroy
end
7.times do |i|
  @employment = Employment.new({"user_id" => i,"start_date"=>"2018-07-06", "end_date"=>"2018-07-23", "company"=>"company#{i}", "role"=>"role#{i}", "description"=>"asfhasihoihfas description#{i}"})
  @employment.save
end
describe "CONTROLLER -- Testing employments response" do
  profile_attributes = ["id", "description", "start_date", "user_id", "end_date", "company", "role"]
  context 'request all employments, checking types' do
    before (:all) do
      @employments = Employment.all
    end
    it 'should return response which is not nil' do
      expect(@employments).to_not be nil
    end

    it 'should return an array of description strings' do
      @employments.each do |employment|
        expect(employment.description).to be_kind_of String
      end
    end
    it 'should return an array of start_date strings' do
      @employments.each do |employment|
        expect(employment.start_date).to be_kind_of Date
      end
    end
    it 'should return an array of end_date strings' do
      @employments.each do |employment|
        expect(employment.end_date).to be_kind_of Date
      end
    end
    it 'should return an array of company strings' do
      @employments.each do |employment|
        expect(employment.company).to be_kind_of String
      end
    end
    it 'should return an array of role strings' do
      @employments.each do |employment|
        expect(employment.role).to be_kind_of String
      end
    end
    it 'should return an array of id int' do
      @employments.each do |employment|
        expect(employment.id).to be_kind_of Integer
      end
    end
    it 'should return an array of user_id String' do
      @employments.each do |employment|
        expect(employment.user_id).to be_kind_of String
      end
    end
  end
  context "other employment methods" do
    before (:all) do
      @employments = Employment.all
    end
    it 'should be able to update a employment' do
      i = 0
      expect(@employments[i].update({"user_id" => i,"start_date"=>"2018-07-06", "end_date"=>"2018-07-23", "company"=>"NEWCompany#{i}", "role"=>"role#{i}", "description"=>"asfhasihoihfas description#{i}"})).to eq true
      expect(@employments[i].company).to eq "NEWCompany0"
    end

    it "should be able to destroy a employment" do
      id = @employments[0].id
      @employment = Employment.find(id)
      @employment.destroy
      begin
        @employment = Employment.find(id)
      rescue
        @employment = false
      end
      expect(@employment).to eq false
    end
  end

end
