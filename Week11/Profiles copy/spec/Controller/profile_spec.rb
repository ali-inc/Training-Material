require 'rails_helper'
status = ["Draft", "Pending", "Approved", "Rejected", "Draft", "Pending", "Approved", "Rejected"]
Profile.all.each do |prof|
  prof.destroy
end
7.times do |i|
  @profile = Profile.new({"user_id" => i, "name" => "Profile#{i}", "summary"=>"This is prof#{i} summary",
  "degree"=>"Degree#{i}", "stream"=>"SDET", "status"=>status[i], "email" => "email#{i}@email.com", "approved_by" => "",
  "section_ids"=>[], "project_ids"=>[], "employment_ids"=>[], "certification_ids"=>[],
  "education_ids"=>[], "custom_ids"=>[]})
  if i == 3 || i == 4 || i == 6 || i == 7
    @profile.approved_by = "trainer_seb"
  end
  @profile.save
end
describe "CONTROLLER -- Testing profiles response" do
  profile_attributes = ["id", "summary", "degree", "user_id", "stream", "name", "status", "approved_by", "email", "created_at", "updated_at"]
  context 'request all profiles checking types' do
    before (:all) do
      @profiles = Profile.all
    end
    it 'should return response which is not nil' do
      expect(@profiles).to_not be nil
    end
    it 'should return an array of summary strings' do
      @profiles.each do |profile|
        expect(profile.summary).to be_kind_of String
      end
    end
    it 'should return an array of degree strings' do
      @profiles.each do |profile|
        expect(profile.degree).to be_kind_of String
      end
    end
    it 'should return an array of stream strings' do
      @profiles.each do |profile|
        expect(profile.stream).to be_kind_of String
      end
    end
    it 'should return an array of name strings' do
      @profiles.each do |profile|
        expect(profile.name).to be_kind_of String
      end
    end
    it 'should return an array of email strings' do
      @profiles.each do |profile|
        expect(profile.email).to be_kind_of String
      end
    end
    it 'should return an array of status strings' do
      @profiles.each do |profile|
        expect(profile.status).to be_kind_of String
        if profile.status == "Approved"|| profile.status == "Rejected"
          expect(profile.approved_by).to be_kind_of String
        end
      end
    end
    it 'should return an array of id int' do
      @profiles.each do |profile|
        expect(profile.id).to be_kind_of Integer
      end
    end
    it 'should return an array of user_id String' do
      @profiles.each do |profile|
        expect(profile.user_id).to be_kind_of String
      end
    end

  end
  context "request query using 'where'" do
    before (:all) do
      @profiles_draft = Profile.where(status: "Draft").order(:name)
      @profiles_pending = Profile.where(status: "Pending").order(:name)
      @profiles_approved = Profile.where(status: "Approved").order(:name)
      @profiles_rejected = Profile.where(status: "Rejected").order(:name)
    end
    it "should return just draft profiles (where)" do
      @profiles_draft.each do |profile|
        expect(profile.status).to eq "Draft"
      end
    end
    it "should return just pending profiles (where)" do
      @profiles_pending.each do |profile|
        expect(profile.status).to eq "Pending"
      end
    end
    it "should return just approved profiles (where)" do
      @profiles_approved.each do |profile|
        expect(profile.status).to eq "Approved"
      end
    end
    it "should return just rejected profiles (where)" do
      @profiles_rejected.each do |profile|
        expect(profile.status).to eq "Rejected"
      end
    end
  end
  context "other profile methods" do
    before (:all) do
      @profiles = Profile.all
    end
    it 'should be able to update a profile' do
      i = 0
      expect(@profiles[i].update({"user_id" => i, "name" => "NEWProfile#{i}", "summary"=>"This is prof#{i} summary",
      "degree"=>"Degree#{i}", "stream"=>"SDET", "status"=>status[i], "email" => "email#{i}@email.com", "approved_by" => "",
      "section_ids"=>[], "project_ids"=>[], "employment_ids"=>[], "certification_ids"=>[],
      "education_ids"=>[], "custom_ids"=>[]})).to eq true
      expect(@profiles[i].name).to eq "NEWProfile0"
    end

    it "should be able to destroy a profile" do
      id = @profiles[0].id
      @profile = Profile.find(id)
      @profile.destroy
      begin
        @profile = Profile.find(id)
      rescue
        @profile = false
      end
      expect(@profile).to eq false
    end
  end

end
