require 'appium_lib'
require 'rspec'
require_relative '../lib/budgetwatch.rb'

RSpec.configure do |config|
  config.formatter = :documentation
end

def opts
  {
    caps: {
      "app": "/Users/tech-a56/Desktop/Coursework/Week12/tuesday/mobile-testing/apps/budgetwatch.apk",
      "platformName": "android",
      "deviceName": "emulator"
    }
  }
end
