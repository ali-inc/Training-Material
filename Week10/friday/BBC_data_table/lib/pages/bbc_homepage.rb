class BBCHomepage
  include Capybara::DSL

  HOMEPAGE_URL = '/'
  FIRST_NAME = 'firstname'
  LAST_NAME = 'lastname'
  SIGN_IN_LINK = 'idcta-link'

  def visit_homepage
    visit HOMEPAGE_URL
  end

  def click_sign_in_link
    click_on SIGN_IN_LINK
  end

  def signed_in?
    find_link('Your account').visible?
  end

end
