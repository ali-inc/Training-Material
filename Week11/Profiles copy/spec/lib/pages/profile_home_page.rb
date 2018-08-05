
class ProfileHomePage
  include Capybara::DSL
  include HTTParty
  base_uri 'http://localhost:3000'

  HOME_PAGE_URL = 'http://localhost:3000'

  def get_status url
    response = HTTParty.get(url)
    return response.code
  end
  def get_message url
    response = HTTParty.get(url)
    return response.message
  end

  def visit_home_page
    visit(HOME_PAGE_URL)
  end
  def visit_page link
    visit(link)
  end

  def get_current_url
    page.current_url
  end

  def check_title
    page.html
  end

  def input_username_admin
    fill_in 'email', with: 'ttest@spartaglobal.com'
  end

  def input_password_admin
    fill_in 'password', with: 'Tr4ining'
  end

  def input_username
    fill_in 'email', with: 'SLewis@spartaglobal.com'
  end
  def input_password
    fill_in 'password', with: 'SLew10'
  end

  def click_submit
    click_on("submit")
  end

  def logout
    click_on("Logout")
  end

end
