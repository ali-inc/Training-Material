require 'spec_helper'

describe 'testing the demoqa registration page' do

  before(:all) do
    @driver = SeleniumDemoReg.new
    @driver.access_registration_form
    @wait = Selenium::WebDriver::Wait.new(timeout: 10)
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the registration for page' do
      expect(@driver.current_url).to eq 'http://demoqa.com/registration/'
    end

    it 'should accept a first name' do
      @driver.first_name_field_displayed
      @driver.set_first_name_field('john')
      expect(@driver.get_first_name_field_value).to eq 'john'
    end

    it 'should accept a last name' do
      @driver.last_name_field_displayed
      @driver.set_last_name_field('doe')
      expect(@driver.get_last_name_field_value).to eq 'doe'
    end

    it 'should accept a marital status selection of Single, Married, or Divorced' do
      @driver.select_marital_option('Single')
      @driver.select_marital_option('Married')
      @driver.select_marital_option('Divorced')
    end

    it 'should accept a hobby status selection of Dance, Reading, or Cricket' do
      @driver.select_hobby_option('Dance')
      @driver.select_hobby_option('Reading')
      @driver.select_hobby_option('Cricket')
    end

    it 'should have a country default of Afhghanistan' do
      expect(@driver.get_selected_country).to eq 'Afghanistan'
    end

    it 'accept a new DOB' do
      @driver.dob_month_list_select('7')
      @driver.dob_day_list_select('12')
      @driver.dob_year_list_select('1990')
    end

    it 'should accept a new country value' do
      @driver.country_dropdown_list_select('United Kingdom')
      @driver.get_selected_country
    end

    it 'should accept a valid phone number' do
      @driver.set_phone_number_field('07723567854')
      expect(@driver.get_phone_number_field_value).to eq '07723567854'
    end

    it 'should accept a username' do
      @driver.set_user_name_field('john123')
      expect(@driver.get_user_name_field_value).to eq 'john123'
    end

    it 'should accept a about yourself text' do
      @driver.set_about_yourself_field('This is some test text')
      expect(@driver.get_about_yourself_value).to eq 'This is some test text'
    end

    it 'should accept a password' do
      @driver.set_password_field('password')
      expect(@driver.get_password_value).to eq 'password'
    end

    it 'should accept a password confirmation' do
      @driver.set_confirmation_password_field('password')
      expect(@driver.get_confirmation_password_value).to eq 'password'
    end

    it 'should register successfully' do
      @driver.click_submit
    end



  end

  context 'error paths for the registration form' do

  end


end