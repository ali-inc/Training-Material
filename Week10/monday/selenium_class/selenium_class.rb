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
    @driver.find_element(:name, FIRST_NAME_FIELD).send_keys name
    @driver.find_element(:name, FIRST_NAME_FIELD)["value"]
  end

  def input_last_name name
    @driver.find_element(:name, LAST_NAME_FIELD).send_keys name
    @driver.find_element(:name, LAST_NAME_FIELD)["value"]
  end

  def select_gender gender
    # @driver.find_element(:id, "sex-#{(g=='male' || g=='m')? 1 : 0}").click
    @driver.find_element(:css,"input[value='#{gender}']").click
    return @driver.find_element(:css,"input[value='#{gender}']").selected?
  end

  def input_date date
    @driver.find_element(:id, DATE_FIELD).send_keys date
    return @driver.find_element(:id, DATE_FIELD)["value"]
  end

  def select_profession profession
    @driver.find_element(:css,"input[value='#{profession}']").click
    return @driver.find_element(:css,"input[value='#{profession}']").selected?
  end

  # def select_continent index
  #   @driver.find_element(:id, 'continents').find_element(:css,"option='#{continent}'").click
  # end

  def select_continent continent
    continent_options = @driver.find_element(:id, 'continents')
    options = continent_options.find_elements(:tag_name, 'option')
    options.each do |option|
      if option.text == continent
        option.click
        return option.selected?
      end
    end
  end

end

# tool = SeleniumQAToolsForm.new
# tool.visit_practice_form
# # tool.get_text
# sleep 4
# tool.input_first_name 'Ali'
# tool.input_last_name 'K'
# tool.select_gender
# tool.input_date '16/07/2018'
# tool.select_profession [1, 2]
# tool.select_continent 'Antartica'
# sleep 10
