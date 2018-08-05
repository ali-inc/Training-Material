class BBCHomepage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://bbc.co.uk/'
  FIRST_NAME = 'firstname'
  LAST_NAME = 'lastname'

  def visit_homepage
    visit HOMEPAGE_URL
  end

  def click_sign_in_link
    click_on 'idcta-link'
  end

  def signed_in?
    find_link('Your account').visible?
  end

end
