Given("I access the BBC login page") do
  # visit('http://bbc.co.uk/signin')
  # @bbc_site = BBCSite.new
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in_link
  expect(current_url).to eq 'https://account.bbc.com/signin'
end

Given("I input an incerrect username") do
  # fill_in('user-identifier-input', with: 'al@kinga.com')
  bbc_accounts_page.input_username 'al@kinga.com'
end

Given("I input an incorrect password") do
  # fill_in('password-input', with: 'abcd1234!!')
  bbc_accounts_page.input_password 'abcd4!'
end

When("I try to login") do
  # click_on('submit-button')
  bbc_accounts_page.click_sing_in_button
end

Then("I receive an error message") do
  # find(:id, 'form-message-username').text
  expect(bbc_accounts_page.error_too_short).to be true
end

Given("I input a cerrect username") do
  bbc_accounts_page.input_username 'al@king.com'
end

Given("I input a correct password") do
  bbc_accounts_page.input_password 'abcd1234!'
end

Then("I should be logged in") do
  expect(bbc_homepage.signed_in?).to eq true
end
