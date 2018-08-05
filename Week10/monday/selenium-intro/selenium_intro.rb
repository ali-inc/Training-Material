require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

# driver.get 'http://bbc.co.uk'
# sleep 7
# driver.find_element(:id, "idcta-statusbar").click
# sleep 4
# driver.find_element(:id "user-identifier-input").send_keys 'alijy@gmail.com'
# sleep 4
# driver.find_element(:id "password-input").send_keys 'absd123ef'
# sleep 4
# driver.find_element(:id "submit-button").click
# sleep 20

driver.get 'http://toolsqa.com/automation-practice-form'
sleep 4
driver.find_element(:name, "firstname").displayed?
driver.find_element(:name, "firstname").send_keys 'Ali'
# driver.find_element(:link, "Partial Link Test").click
driver.find_element(:name, "lastname").send_keys 'K'
driver.find_element(:id, "sex-0").click
sleep 4
