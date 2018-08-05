require 'capybara'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

session = Capybara::Session.new(:chrome)

session.visit('http://toolsqa.com/automation-practice-form/')

session.fill_in 'firstname', with: 'Alex'
session.fill_in 'lastname', with: 'King'
session.choose 'sex-0'
session.select 'Antartica', from: 'continents'
session.select 'WebElement Commands', from: 'selenium_commands'
session.click_button 'submit'
sleep 3
