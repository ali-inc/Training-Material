require 'selenium-webdriver'

class RegistrationPage

  # page_url
  PAGE_URL = 'https://www.bbc.co.uk/'
  # Page field
  REGISTRATION_LINK = 'sign-in-text__link'


  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def access_website
    @driver.get(PAGE_URL)
  end

  def select_registration_link
    @driver.find_elements(:class, REGISTRATION_LINK)[1].click
  end

  def current_url
    sleep 3
    @driver.current_url
  end

  def select_over_13
    # wait = Selenium::WebDriver::Wait.new(:timeout => 10)
    # buttons = wait.until{@driver.find_elements(:class, "button")}
    # buttons[1].click
    sleep 3
    @driver.find_elements(:class, "button")[1].click
    return @driver.find_element(:id, 'dateOfBirthField').displayed?
  end

  def input_dob day, month, year
    sleep 3
    @driver.find_element(:id, 'day-input').send_keys day
    @driver.find_element(:id, 'month-input').send_keys month
    @driver.find_element(:id, 'year-input').send_keys year
    @driver.find_element(:id, 'submit-button').click
    begin
      @driver.find_element(:id, 'password').displayed?
    rescue
      return @driver.find_element(:class,'form-message__text').find_element(:tag_name,"span").text
    end
  end

  def input_registration_details email, password, postcode, gender, update_emails = 2
    sleep 3
    @driver.find_element(:id, 'user-identifier-input').send_keys email
    @driver.find_element(:id, 'password-input').send_keys password
    @driver.find_element(:id, 'postcode-input').send_keys postcode
    @driver.find_element(:id, 'gender-input').find_element(:css,"option[value='#{gender}']").click
    @driver.find_elements(:class, 'button--radio')[update_emails-1].click
    @driver.find_element(:id, 'submit-button').click
    return @driver.find_element(:tag_name, 'span').text == "Thanks. You're now signed in."
  end

end
