require_relative 'pages/bbc_homepage'
require_relative 'pages/bbc_accounts_page'
require_relative 'pages/bbc_signup_page'

module BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_accounts_page
    BBCAccountsPage.new
  end

  def bbc_signup_page
    BBCSignUpPage.new
  end

end
