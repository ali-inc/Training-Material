require 'spec_helper'
require 'faker'

describe 'testing the bbc registration process' do

  before(:each) do
    @driver = SeleniumBBCSite.new.access_registration_page
    @driver.access_website
  end

  context 'positive paths for the registration form and register' do

    it "should successfully register" do
      expect(@driver.current_url).to eq 'https://www.bbc.co.uk/'
      @driver.select_registration_link
      expect(@driver.current_url).to eq 'https://account.bbc.com/register'
      expect(@driver.select_over_13).to eq true
      expect(@driver.input_dob 3, 3, 1993).to eq true
      email = "#{Faker::Name.first_name}#{Faker::Number.number(3)}@#{Faker::Name.last_name}.com"
      expect(@driver.input_registration_details email,'!0987qwer','NW64AD','prefer not to say').to eq true
    end

  end

  context "check signup errors" do

    it "should check less that 13 DOB error" do
      expect(@driver.current_url).to eq 'https://www.bbc.co.uk/'
      @driver.select_registration_link
      expect(@driver.current_url).to eq 'https://account.bbc.com/register'
      expect(@driver.select_over_13).to eq true
      expect(@driver.input_dob 16, 7, 2018).to eq "Sorry, you need to be 13 or over."
    end

  end

end
