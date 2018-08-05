require 'rails_helper'

describe "VIEWS -- Testing all pages connect" do
  before (:all) do
    @profile_site = ProfileSite.new
    @homepage = @profile_site.profile_home_page
  end
  # LOGIN PAGE
  context 'requesting home page' do
    it 'should connect' do
      @homepage.visit_home_page
      expect(@homepage.get_status("http://localhost:3000/")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/")).to eq "OK"
    end
    it 'show login page' do
      @homepage.visit_home_page
      expect(@homepage.check_title).to include "<h1 class=\"header\">Login</h1>"
    end
  end
  # PROFILE PAGE
  context "requesting profiles page" do
    it 'should connect' do
      @homepage.visit_home_page
      @homepage.input_username_admin
      @homepage.input_password_admin
      @homepage.click_submit
      @homepage.visit_page("http://localhost:3000/profiles")
      expect(@homepage.get_status("http://localhost:3000/profiles/adminindex")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/profiles/adminindex")).to eq "OK"
    end
    it 'show profiles page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Profiles</h1>"
    end
  end
  context "requesting profiles show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/profiles/1")
      expect(@homepage.check_title).to include "<a class=\"btn btn-primary\" href=\"/profiles\">Back to Profiles</a>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/profiles/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Profile</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/profiles/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Edit Profile</h1>"
    end
  end
  # PROJECTS PAGE
  context "requesting projects page" do
    it 'should connect' do
      @homepage.visit_page("http://localhost:3000/projects")
      expect(@homepage.get_status("http://localhost:3000/projects")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/projects")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/projects"
    end
    it 'show projects page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Projects</h1>"
    end
  end
  context "requesting projects show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/projects/1")
      expect(@homepage.check_title).to include "<strong>Title:</strong>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/projects/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Project</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/projects/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Editing Project</h1>"
    end
  end
  # EMPLOYMENT PAGE
  context "requesting employment page" do
    it 'should connect' do
      @homepage.visit_page("http://localhost:3000/employments")
      expect(@homepage.get_status("http://localhost:3000/employments")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/employments")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/employments"
    end
    it 'show employment page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Employment</h1>"
    end
  end
  context "requesting employments show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/employments/1")
      expect(@homepage.check_title).to include "<strong>Company:</strong>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/employments/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Employment</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/employments/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Editing Employment</h1>"
    end
  end
  # EDUCATIONS PAGE
  context "requesting educations page" do
    it 'should connect' do
      @homepage.visit_page("http://localhost:3000/educations")
      expect(@homepage.get_status("http://localhost:3000/educations")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/educations")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/educations"
    end
    it 'show educations page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Educations</h1>"
    end
  end
  context "requesting education show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/educations/1")
      expect(@homepage.check_title).to include "<strong>Institution:</strong>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/educations/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Education</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/educations/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Editing Education</h1>"
    end
  end
  # CERTIFICATIONS PAGE
  context "requesting certifications page" do
    it 'should connect' do
      @homepage.visit_page("http://localhost:3000/certifications")
      expect(@homepage.get_status("http://localhost:3000/certifications")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/certifications")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/certifications"
    end
    it 'show certifications page' do
      expect(@homepage.check_title).to include "<h1 id=\"certification-index-header\" class=\"header\">Certifications</h1>"
    end
  end
  context "requesting certifications show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/certifications/1")
      expect(@homepage.check_title).to include "<strong>Title:</strong>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/certifications/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Certification</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/certifications/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Editing Certification</h1>"
    end
  end
  # CUSTOM SECTIONS PAGE
  context "requesting custom sections page" do
    it 'should connect' do
      @homepage.visit_page("http://localhost:3000/customs")
      expect(@homepage.get_status("http://localhost:3000/customs")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/customs")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/customs"
    end
    it 'show custom sections page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Custom Sections</h1>"
    end
  end
  context "requesting customs show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/customs/1")
      expect(@homepage.check_title).to include "<strong>Title:</strong>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/customs/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Custom</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/customs/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Editing Custom</h1>"
    end
  end
  # SECTIONS PAGE
  context "requesting sections page" do
    it 'should connect' do
      @homepage.visit_page("http://localhost:3000/sections")
      expect(@homepage.get_status("http://localhost:3000/sections")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/sections")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/sections"
    end
    it 'show sections page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Sections</h1>"
    end
  end
  context "requesting sections show/new/edit pages" do
    it 'should show show page' do
      @homepage.visit_page("http://localhost:3000/sections/1")
      expect(@homepage.check_title).to include "<strong>Skills:</strong>"
    end
    it 'should show new page' do
      @homepage.visit_page("http://localhost:3000/sections/new")
      expect(@homepage.check_title).to include "<h1 class=\"header\">New Section</h1>"
    end
    it 'should show edit page' do
      @homepage.visit_page("http://localhost:3000/sections/1/edit")
      expect(@homepage.check_title).to include "<h1 class=\"header\">Editing Section</h1>"
    end
  end
  context "requesting standard index" do
    it "should display standard index page" do
      @homepage.logout
      @homepage.input_username
      @homepage.input_password
      @homepage.click_submit
      @homepage.visit_page("http://localhost:3000/profiles")
      expect(@homepage.get_status("http://localhost:3000/profiles")).to eq 200
      expect(@homepage.get_message("http://localhost:3000/profiles")).to eq "OK"
      expect(@homepage.get_current_url).to eq "http://localhost:3000/profiles"
    end
    it 'show profiles page' do
      expect(@homepage.check_title).to include "<h1 class=\"header\">Profiles</h1>"
    end
  end
end
