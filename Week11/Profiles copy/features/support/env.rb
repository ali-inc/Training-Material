require 'capybara/cucumber'
require 'capybara/dsl'
require_relative '../lib/profile_site.rb'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.ignore_hidden_elements = true
  config.default_driver = :chrome
  config.app_host = 'http://localhost:3000'
end

World(ProfileSite)
