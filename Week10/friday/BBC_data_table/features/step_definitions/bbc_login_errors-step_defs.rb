Given("I am on the BBC home page") do
  bbc_homepage.visit_homepage
end

Given("I move to the sign in page") do
  bbc_homepage.click_sign_in_link
end

When("I proceed to register") do
  bbc_accounts_page.click_register
  sleep 1
  bbc_accounts_page.over_13
end

When("I input my DOB") do
  bbc_accounts_page.enter_dob 2, 2, 2002
end

And(/^I input the necessary details with the password details (.*)$/) do |password|
  bbc_accounts_page.input_username 'al@king.com'
  bbc_accounts_page.input_password password
  # bbc_accounts_page.click_on_page
  bbc_accounts_page.password_field.send_keys :tab
end

Then(/^I receive the corresponding error (.*)$/) do |error|
  expect(bbc_accounts_page.check_error_message).to eq error
end
