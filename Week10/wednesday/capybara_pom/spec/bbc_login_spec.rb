require 'spec_helper'
require 'faker'

describe 'testing the bbc registration process' do

  before(:each) do
    @bbc_site = BBCSite.new
  end

  context 'it should respond with the correct error message for incorrect signup details' do

    it "should respond with an error if the password is too short" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@kinga.com'
      @bbc_site.bbc_accounts_page.input_password 'abcd4!'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_accounts_page.error_too_short).to be true

    end

    it "should respond with an error if the password is too simple" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@kinga.com'
      @bbc_site.bbc_accounts_page.input_password 'abcd1234'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_accounts_page.error_easy_to_guess).to be true
    end

    it "should respond with an error if the password is all alpha chars" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@kinga.com'
      @bbc_site.bbc_accounts_page.input_password 'abcdefgh'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_accounts_page.error_include_other_than_letter).to be true
    end

    it "should respond with an error if the password is all numeric chars" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@kinga.com'
      @bbc_site.bbc_accounts_page.input_password '123456789'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_accounts_page.error_include_letter).to be true
    end

  end

  context 'check functionality of user login' do

    it "should produce an error when password is missing" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@king.com'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_accounts_page.error_missing).to be true
    end

    it "should produce an error when inputting an incorrect password to a valid account" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@king.com'
      @bbc_site.bbc_accounts_page.input_password 'dbca4321!'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_accounts_page.error_incorrect).to be true
    end

    it "should allow the user to signup with correct details" do
      @bbc_site.bbc_homepage.visit_homepage
      @bbc_site.bbc_homepage.click_sign_in_link
      @bbc_site.bbc_accounts_page.input_username 'al@king.com'
      @bbc_site.bbc_accounts_page.input_password 'abcd1234!'
      @bbc_site.bbc_accounts_page.click_sing_in_button
      expect(@bbc_site.bbc_homepage.signed_in?).to eq true
    end

  end

end
