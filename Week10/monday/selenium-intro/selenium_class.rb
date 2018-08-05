require 'selenium-webdriver'

class SeleniumQAToolsForm

  PRACTICE_FORM_URL = 'http://toolsqa.com/automation-practice-form'
  FIRST_NAME_FIELD = 'firstname'
  LAST_NAME_FIELD = 'lastname'
  GENDER = ['sex-0', 'sex-1']
  DATE_FIELD = 'datepicker'
  PROFESSION = ['profession-0', 'profession-1']
  CONTINENTS = ['Asia', 'Europe', 'Africa', 'Australia', 'South America', 'North America', 'Antartica']

  def initialize
    @driver = Selenium::WebDriver.for :chrome
  end

  def get_text
    @driver.find_element(:class, "bcd").text
  end

  def visit_practice_form
    @driver.get(PRACTICE_FORM_URL)
  end

  def input_first_name name
    @driver.find_element(:name, FIRST_NAME_FIELD).displayed?
    @driver.find_element(:name, FIRST_NAME_FIELD).send_keys name
  end

  def input_last_name name
    @driver.find_element(:name, LAST_NAME_FIELD).displayed?
    @driver.find_element(:name, LAST_NAME_FIELD).send_keys name
  end

  def select_gender
    @driver.find_element(:id, "sex-#{rand(0..1)}").click
  end

  def input_date date
    @driver.find_element(:id, DATE_FIELD).send_keys date
  end

  def select_profession list
    list.each do |i|
      @driver.find_element(:id, PROFESSION[i-1]).click
    end
  end

  # def select_continent index
  #     @driver.find_element(:id, CONTINENT[rand(0..6)]).click
  # end

  def select_continent continent
    continent_options = @driver.find_element(:id, 'continents')
    options = continent_options.find_elements(:tag_name, 'option')
    options.each do |option|
      if option.text == continent
        option.click
      end
    end
  end

end
