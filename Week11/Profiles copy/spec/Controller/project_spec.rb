require 'rails_helper'
# params = {"user_id" => i, "title"=>"abwufgaisbkf", "description"=>"abskfbl;' na slgidu;aljhpa s;n"}

Project.all.each do |project|
  project.destroy
end
7.times do |i|
  @project = Project.new({"user_id" => i, "title"=>"title#{i}", "description"=>"description #{i}"})
  @project.save
end
describe "CONTROLLER -- Testing projects response" do
  context 'request all projects, checking types' do
    before (:all) do
      @projects = Project.all
    end
    it 'should return response which is not nil' do
      expect(@projects).to_not be nil
    end

    it 'should return an array of description strings' do
      @projects.each do |project|
        expect(project.description).to be_kind_of String
      end
    end
    it 'should return an array of title strings' do
      @projects.each do |project|
        expect(project.title).to be_kind_of String
      end
    end
    it 'should return an array of id int' do
      @projects.each do |project|
        expect(project.id).to be_kind_of Integer
      end
    end
    it 'should return an array of user_id String' do
      @projects.each do |project|
        expect(project.user_id).to be_kind_of String
      end
    end
  end
  context "other project methods" do
    before (:all) do
      @projects = Project.all
    end
    it 'should be able to update a project' do
      i = 0
      expect(@projects[i].update({"user_id" => i, "title"=>"NEWtitle#{i}", "description"=>"description#{i} na slgidu;aljhpa sn"})).to eq true
      expect(@projects[i].title).to eq "NEWtitle0"
    end

    it "should be able to destroy a project" do
      id = @projects[0].id
      @project = Project.find(id)
      @project.destroy
      begin
        @project = Project.find(id)
      rescue
        @project = false
      end
      expect(@project).to eq false
    end
  end

end
