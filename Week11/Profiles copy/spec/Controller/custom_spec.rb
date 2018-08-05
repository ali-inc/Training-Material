require 'rails_helper'

Custom.all.each do |cust|
  cust.destroy
end
7.times do |i|
  @custom = Custom.new({"user_id" => i,"title"=>"title#{i}", "heading"=>"head #{i}", "body"=>"body #{i}"})
  @custom.save
end
describe "CONTROLLER -- Testing customs response" do
  profile_attributes = ["id", "body", "title", "user_id", "heading", "created_at", "updated_at"]
  context 'request all customs checking types' do
    before (:all) do
      @customs = Custom.all
    end
    it 'should return response which is not nil' do
      expect(@customs).to_not be nil
    end

    it 'should return an array of title strings' do
      @customs.each do |custom|
        expect(custom.title).to be_kind_of String
      end
    end
    it 'should return an array of body strings' do
      @customs.each do |custom|
        expect(custom.body).to be_kind_of String
      end
    end
    it 'should return an array of heading strings' do
      @customs.each do |custom|
        expect(custom.heading).to be_kind_of String
      end
    end
    it 'should return an array of id int' do
      @customs.each do |custom|
        expect(custom.id).to be_kind_of Integer
      end
    end
    it 'should return an array of user_id String' do
      @customs.each do |custom|
        expect(custom.user_id).to be_kind_of String
      end
    end
  end
  context "other custom methods" do
    before (:all) do
      @customs = Custom.all
    end
    it 'should be able to update a custom' do
      i = 0
      expect(@customs[i].update({"user_id" => i,"title"=>"NEWCustom#{i}", "heading"=>"fxgchvjbklnm;k", "body"=>" hgjvklhtdfjcjh"})).to eq true
      expect(@customs[i].title).to eq "NEWCustom0"
    end

    it "should be able to destroy a custom" do
      id = @customs[0].id
      @custom = Custom.find(id)
      @custom.destroy
      begin
        @custom = Custom.find(id)
      rescue
        @custom = false
      end
      expect(@custom).to eq false
    end
  end

end
