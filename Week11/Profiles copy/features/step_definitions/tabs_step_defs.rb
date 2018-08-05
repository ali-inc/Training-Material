Given("I navigate to projects") do
  profile_tabs.visit_projects
  sleep 1
end

Then("Project should be created") do
  expect(profile_tabs.check_if_saved).to be true
end

When(/^I incorrectly fill in title (.*)$/) do |title|
  profile_tabs.enter_title title
end

When(/^I incorrectly fill in description (.*)$/) do |desc|
  profile_tabs.enter_description desc
end

Then(/^Should output project errors (.*)$/) do |error|
  expect(profile_user.profile_error(error)).to eq true
end

Given("I click on a project title") do
  profile_tabs.select_title 0
end

Then("project should be updated") do
  expect(profile_tabs.check_if_updated).to be true
end

Then("Project shouldn't be deleted") do
  expect(profile_tabs.check_if_destroyed).to be false
end

Then("Project should be deleted") do
  expect(profile_tabs.check_if_destroyed).to be true
end

Given("I navigate to employment") do
  profile_tabs.visit_employment
  sleep 1
end

When("I fill in company") do
  profile_tabs.fill_in_company 'company name'
end

When("I fill in role") do
  profile_tabs.fill_in_role 'role title'
end

When("I fill in start date") do
  profile_tabs.fill_in_start_date '06062010'
end

When("I fill in end date") do
  profile_tabs.fill_in_end_date '06062012'
end

Then("Employment should be created") do
  expect(profile_tabs.check_if_saved).to be true
end

Given("I click on employment title") do
  profile_tabs.select_title 0
end

Then("Employment should be updated") do
  expect(profile_tabs.check_if_updated).to be true
end

When(/^I incorrectly fill in company(.*)$/) do |comp|
  sleep 1
  profile_tabs.fill_in_company comp
end

When(/^I incorrectly fill in role(.*)$/) do |role|
  profile_tabs.fill_in_role role
end

When(/^I incorrectly fill in start date (.*)$/) do |date|
  if date == ""
  else
    profile_tabs.fill_in_start_date date
  end
  sleep 1
end

When(/^I incorrectly fill in end date (.*)$/) do |date|
  if date == ""
  else
  profile_tabs.fill_in_end_date date
  end
end

Then(/^I should recieve employment creation error (.*)$/) do |error|
  expect(profile_user.profile_error(error)).to eq true
end

Then("Employment shouldn't be deleted") do
  expect(profile_tabs.check_if_destroyed).to be false
end

Then("Employment should be deleted") do
  expect(profile_tabs.check_if_destroyed).to be true
end

Given("I navigate to education") do
  profile_tabs.visit_education
  sleep 1
end

When("I fill in institution") do
  profile_tabs.fill_in_institution 'institution name'
end

When("I fill in course") do
  profile_tabs.fill_in_course 'course name'
end

When("I fill in Description") do
  profile_tabs.enter_description 'Description'
end

Then("Education should be created") do
  expect(profile_tabs.check_if_saved).to be true
end

Given("I click education title") do
  profile_tabs.select_title 0
end

Then("Education should be updated") do
  expect(profile_tabs.check_if_updated).to be true
end

When(/^I incorrectly fill in institution (.*)$/) do |institution|
  profile_tabs.fill_in_institution institution
end

When(/^I incorrectly fill in course (.*)$/) do |course|
  profile_tabs.fill_in_course course
end

Then(/^I should recieve the corresponding education errors (.*)$/) do |error|
  expect(profile_user.profile_error(error)).to eq true
end

Then("education should not be destroyed") do
  expect(profile_tabs.check_if_destroyed).to be false
end

Then("education should be destroyed") do
  expect(profile_tabs.check_if_destroyed).to be true
end

Then("Certification should be created") do
  expect(profile_tabs.check_if_saved).to be true
end

Given("I navigate to certification") do
  profile_tabs.visit_certifications
  sleep 1
end

Given("I click on certification title") do
  profile_tabs.select_title 0
end

Then("Certification should be updated") do
  expect(profile_tabs.check_if_updated).to be true
end

Then(/^I should receive the corresponding certification error (.*)$/) do |error|
  expect(profile_user.profile_error(error)).to eq true
end

Then("certification should not be destroyed") do
  expect(profile_tabs.check_if_destroyed).to be false
end

Then("certificate should be deleted") do
  expect(profile_tabs.check_if_destroyed).to be true
end

Given("I navigate to custom section") do
  profile_tabs.visit_custom_sections
  sleep 1
end

When("I fill in heading") do
  profile_tabs.fill_in_heading 'Spartans'
end

When("I fill in body") do
  profile_tabs.fill_in_body 'Deus Ex Machina'
end

Then("Custom section should be created") do
  expect(profile_tabs.check_if_saved).to be true
end

Given("i navigate to custom section") do
  profile_tabs.visit_custom_sections
  sleep 1
end

Given("I click on custom section title") do
  profile_tabs.select_title 0
end

Then("Custom section should be updated") do
  expect(profile_tabs.check_if_updated).to be true
end

When(/^I incorrectly fill in heading (.*)$/) do |heading|
  profile_tabs.fill_in_heading heading
end

When(/^I incorrectly fill in body (.*)$/) do |body|
  profile_tabs.fill_in_body body
end

Then(/^I should receive the corresponding custom section error message (.*)$/) do |error|
  expect(profile_user.profile_error(error)).to eq true
end

Then("custom section should not be destroyed") do
  expect(profile_tabs.check_if_destroyed).to be false
end

Then("custom section should be deleted") do
  expect(profile_tabs.check_if_destroyed).to be true
end
