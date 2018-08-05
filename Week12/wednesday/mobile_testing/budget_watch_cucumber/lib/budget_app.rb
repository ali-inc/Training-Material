require_relative 'pages/home_page'
require_relative 'pages/budget_page'
require_relative 'pages/transaction_page'

module BudgetApp

  def homepage
    HomePage.new
  end

  def budgetpage
    BudgetPage.new
  end

  def transactionpage
    TransactionPage.new
  end

end
