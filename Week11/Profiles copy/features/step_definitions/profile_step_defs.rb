Given("I am on the login page") do
  profile_user.visit_login
end

When("I enter valid username") do
  profile_user.input_username "ttest@spartaglobal.com"
end

When("I enter valid password") do
  profile_user.input_password "Tr4ining"
end

When("I click login") do
  profile_user.click_submit
end

Then("I should be logged in") do
  expect(current_url).to eq 'http://localhost:3000/profiles/adminindex'
end

When(/^I enter invalid username (.*)$/) do |username|
  profile_user.input_username username
end

When(/^I enter invalid password (.*)$/) do |password|
  profile_user.input_password password
end

Then(/^I should get a login error message (.*)$/) do |error|
  expect(profile_user.login_error).to eq error
end

Given("I am logged in") do
  profile_user.visit_login
  profile_user.input_username "PKumar@spartaglobal.com"
  profile_user.input_password "PKum10"
  profile_user.click_submit
  profile_user.check_login
end

When("I click create profile") do
  profile_user.click_create_a_profile
  sleep 2
end

When("I fill in summary and degree") do
  sleep 1
  profile_user.input_profile_summary "This is a summary"
  sleep 1
  profile_user.input_profile_degree "Degree"
end

When("I fill in stream") do
  profile_user.select_stream
end

When("I select information to include") do
  profile_user.select_profile_sections 1
end

When("I select profile status") do
  profile_user.select_profile_status "draft"
end

When("I click save") do
  sleep 1
  profile_user.click_save
  sleep 1
end

Then("The profile should be created") do
  expect(profile_user.profile_created).to be true
end

When(/^I incorrectly enter summary (.*)$/) do |summary|
  profile_user.input_profile_summary summary
end

When(/^I incorrectly enter degree (.*)$/) do |degree|
  profile_user.input_profile_degree degree
end

Then(/^I should receive corresonding profile error (.*)$/) do |error|
  expect(profile_user.profile_error(error)).to eq true
end

When("I click on a profile") do
  profile_user.click_profile
end

Then("I should be redirected to that profile") do
  expect(current_url).to eq 'http://localhost:3000/profiles/5'
end

When("I click edit profile") do
  profile_user.click_edit
end

Then("The edited profile should be saved") do
  expect(profile_user.profile_saved_message).to eq '*Profile was successfully updated.'
end

When("I click download profile") do
    profile_user.click_download
end

Then("The profile should be downloaded") do
  popup = page.driver.browser.window_handles.last
  page.driver.browser.switch_to.window(popup)
end

When("I click delete profile") do
  profile_user.click_destroy
end

Then("The profile should be destroyed") do
  expect(profile_user.confirm_delete).to eq '*Profile was successfully destroyed.'
end

#Footer testing
When("I resize the window") do
  window = Capybara.current_session.current_window.resize_to(375, 812)
end


Then("The footer should disappear") do
  expect(profile_user.find_footer).to eq false
  window = Capybara.current_session.current_window.resize_to(1120, 812)
end
