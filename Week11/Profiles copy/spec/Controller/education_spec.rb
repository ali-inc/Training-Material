require 'rails_helper'
Education.all.each do |ed|
  ed.destroy
end
4.times do |i|
  @eds = Education.new({"start_date"=>"2011-01-21", "end_date"=>"2013-01-12", "institution"=>"institution#{i}", "course"=>"course#{i}", "description"=>"description#{i}", "user_id" => "#{i}"})
  @eds.save
end
describe "CONTROLLER -- Testing education response" do

  context 'request all educations checking types' do
    before (:all) do
      @eds = Education.all
    end
    it 'should return response which is not nil' do
      expect(@eds).to_not be nil
    end
    it 'should return an array of start_date strings' do
      @eds.each do |ed|
        expect(ed.start_date).to be_kind_of Date
      end
    end
    it 'should return an array of end_date strings' do
      @eds.each do |ed|
        expect(ed.end_date).to be_kind_of Date
      end
    end
    it 'should return an array of institution strings' do
      @eds.each do |ed|
        expect(ed.institution).to be_kind_of String
      end
    end
    it 'should return an array of course strings' do
      @eds.each do |ed|
        expect(ed.course).to be_kind_of String
      end
    end
    it 'should return an array of description strings' do
      @eds.each do |ed|
        expect(ed.description).to be_kind_of String
      end
    end
    it 'should return an array of user_id strings' do
      @eds.each do |ed|
        expect(ed.user_id).to be_kind_of String
      end
    end
  end
  context 'request all educations checking types' do
    before (:all) do
      @eds = Education.where(user_id: 2)
    end
    it "should return educations belonging to 2" do
      @eds.each do |ed|
        expect(ed.user_id).to eq "2"
      end
    end
  end
  context 'request all educations checking types' do

    before (:all) do
      @eds = Education.all
    end

    it 'should be able to update a education' do
      i = 0
      expect(@eds[i].update({"start_date"=>"2011-01-21", "end_date"=>"2013-01-12", "institution"=>"institution#{i}", "course"=>"course#{i}", "description"=>"NEWdescription#{i}", "user_id" => "#{i}"})).to eq true
      expect(@eds[i].description).to eq "NEWdescription0"
    end

    it "should be able to destroy a education" do
      id = @eds[0].id
      @ed = Education.find(id)
      @ed.destroy
      begin
        @ed = Education.find(id)
      rescue
        @ed = false
      end
      expect(@ed).to eq false
    end

  end
end
