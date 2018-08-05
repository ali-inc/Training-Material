require 'rails_helper'
Section.all.each do |sec|
  sec.destroy
end
4.times do |i|
  @secs = Section.new({"title"=>"title#{i}", "description"=>"description#{i}", "skills"=>"skill#{i}"})
  @secs.save
end
describe "CONTROLLER -- Testing section response" do

  context 'request all sections checking types' do
    before (:all) do
      @secs = Section.all
    end
    it 'should return response which is not nil' do
      expect(@secs).to_not be nil
    end
    it 'should return an array of title strings' do
      @secs.each do |sec|
        expect(sec.title).to be_kind_of String
      end
    end
    it 'should return an array of description strings' do
      @secs.each do |sec|
        expect(sec.description).to be_kind_of String
      end
    end
    it 'should return an array of skill strings' do
      @secs.each do |sec|
        expect(sec.skills).to be_kind_of String
      end
    end
  end
  context 'request all sections checking types' do
    before (:all) do
      @secs = Section.where(id: 2)
    end
    it "should return sections belonging to 2" do
      @secs.each do |sec|
        expect(sec.id).to eq 2
      end
    end
  end
  context 'request all sections checking types' do

    before (:all) do
      @secs = Section.all
    end

    it 'should be able to update a section' do
      i = 0
      expect(@secs[i].update({"title"=>"title#{i}", "description"=>"NEWdescription#{i}", "skills"=>"skill#{i}"})).to eq true
      expect(@secs[i].description).to eq "NEWdescription0"
    end

    it "should be able to destroy a section" do
      id = @secs[0].id
      @sec = Section.find(id)
      @sec.destroy
      begin
        @sec = Section.find(id)
      rescue
        @sec = false
      end
      expect(@sec).to eq false
    end

  end
end
