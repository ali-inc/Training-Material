Given("I am logged in as an admin") do
  profile_user.visit_login
  profile_user.input_username "ttest@spartaglobal.com"
  profile_user.input_password "Tr4ining"
  profile_user.click_submit
  expect(current_url).to eq 'http://localhost:3000/profiles/adminindex'
end

When("I click approve on a pending profile") do
  profile_admin.approve_pending
end


Then("Profile should be approved") do
  expect(profile_admin.approved_profile?).to be true
end

When("I click reject on a pending profile") do
  profile_admin.reject_pending
end

When("I click reject on an approved profile") do
  profile_admin.reject_approved
end

Then("Profile should be rejected") do
  expect(profile_admin.rejected_profile?).to be true
end

When("I click share on a profile") do
  sleep 1
  profile_admin.share_profile
end

When("I copy share link") do
  # profile_admin.copy_link
end

When("I navigate to the share link") do
  profile_admin.visit_share_link
end

Then("I should be on the shared profile page") do
  expect(current_url).to eq profile_admin.share_page
end

Given("I navigate to sections") do
  profile_admin.visit_sections
end

When("I click create") do
  profile_admin.create_new_section
end

When("I fill in title") do
  profile_admin.enter_title 'title7652'
end

When("I fill in description") do
  profile_admin.enter_description 'this is the the best description you have ever seen'
end

When("I fill in skills") do
  profile_admin.enter_skills 'youve got no skills'
end

Then("Section should be created") do
  expect(profile_admin.created_section?).to be true
end

When("I click edit") do
  sleep 1
  profile_admin.click_edit
end

Then("Section should be updated") do
  expect(profile_admin.section_updated?).to be true
end

When("I click on delete") do
  sleep 1
  profile_admin.destroy_section
end

When("I cancel") do
  profile_admin.cancel_delete
end

Then("Section should not be deleted") do
  sleep 1
  expect(profile_admin.not_deleted?).to be true
end

When("I click confirm") do
  profile_admin.confirm_delete
end

Then("Section should be destroyed") do
  expect(profile_admin.destroyed_section?).to be true
end
