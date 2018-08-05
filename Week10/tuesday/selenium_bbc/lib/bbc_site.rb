require 'selenium-webdriver'
require_relative 'pages/bbc_registrationpage'

class SeleniumBBCSite

  def access_registration_page
    RegistrationPage.new
  end


end

# x = SeleniumBBCSite.new
# reg = x.access_registration_page
# reg.access_website
# reg.select_registration_link
# reg.select_over_13
# reg.input_dob 3, 3, 1993
# reg.input_registration_details 'wasdc212@balaba.com','!0987qwer','NW64AD','prefer not to say'
# sleep 5
