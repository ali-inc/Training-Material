require 'capybara'

class QAToolsDemoForm
  include Capybara

  PAGE_URL = 'http://toolsqa.com/automation-practice-form/'
  FIRST_NAME = 'firstname'
  LAST_NAME = 'lastname'

  def initialize
    Capybara.register_driver :chrome do |app|
      Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end

    @session = Capybara::Session.new(:chrome)
  end

  def access_website
    @session.visit 'http://toolsqa.com/automation-practice-form/'
  end

  def input_first_name name
    @session.fill_in FIRST_NAME, with: name
  end

  def input_last_name name
    @session.fill_in LAST_NAME, with: name
  end

  def select_gender gender
    if gender == 'male'
      @session.choose 'sex-0'
    elsif gender == 'female'
      @session.choose 'sex-1'
    end
  end

end

testcase = QAToolsDemoForm.new
testcase.access_website
testcase.input_first_name 'Alex'
testcase.input_last_name 'King'
testcase.select_gender 'female'
sleep 4
