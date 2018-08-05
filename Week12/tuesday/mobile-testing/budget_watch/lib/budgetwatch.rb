require_relative 'pages/budget_page.rb'
require_relative 'pages/main_page.rb'

class BudgetWatch

  def budget_page
    BudgetPage.new
  end

  def main_page
    MainPage.new
  end

end
