require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form

  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.set_first_name_field 'Alex'
      expect(@driver.first_name_field_displayed).to eq true
      expect(@driver.get_first_name_field_value).to eq 'Alex'
    end

    it 'should accept a last name' do
      @driver.set_last_name_field 'King'
      expect(@driver.last_name_field_displayed).to eq true
      expect(@driver.get_last_name_field_value).to eq 'King'
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      expect(@driver.select_marital_option('single')).to eq true
      expect(@driver.select_marital_option('married')).to eq true
      expect(@driver.select_marital_option('divorced')).to eq true
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      expect(@driver.select_hobby_option('dance')).to eq true
      expect(@driver.select_hobby_option('reading')).to eq true
      expect(@driver.select_hobby_option('cricket ')).to eq true
    end

    it 'should have a country default of Afghanistan' do
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('12')
      @driver.dob_day_list_select('26')
      @driver.dob_year_list_select('2013')
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select 'Spain'
      expect(@driver.get_selected_country).to eq 'Spain'
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field '07788999333'
      expect(@driver.get_phone_number_field_value).to eq '07788999333'
    end

    it 'should accept a username' do
      @driver.set_user_name_field 'ak47'
      expect(@driver.get_user_name_field_value).to eq 'ak47'
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('This is all about me!')
      expect(@driver.get_about_yourself_value).to eq 'This is all about me!'
    end

    it 'should accept a password' do
      @driver.set_password_field('password123')
      expect(@driver.get_password_value).to eq 'password123'

    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('password123')
      expect(@driver.get_confirmation_password_value).to eq 'password123'
      if @driver.get_password_value != ''
        expect(@driver.get_confirmation_password_value).to eq @driver.get_password_value
      end
    end

    it 'should register successfully' do
      @driver.click_submit
      sleep 4
    end

  end

end
