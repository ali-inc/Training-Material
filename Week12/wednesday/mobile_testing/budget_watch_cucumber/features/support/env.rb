require 'appium_lib'
require 'cucumber'
require 'rspec'
require_relative '../../lib/budget_app.rb'

# RSpec.configure do |config|
#   config.formatter = :documentation
# end

def opts
  {
    caps: {
      "app": "apps/budgetwatch.apk",
      "platformName": "android",
      "deviceName": "emulator"
    }
  }
end

Appium::Driver.new(opts, true)

World(BudgetApp)
