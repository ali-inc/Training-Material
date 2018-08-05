Given("I have a budget") do
  expect(homepage.check_homepage_displayed?).to be true
  homepage.click_budget_button
  budgetpage.enter_budget "firstBudget", "100"
  budgetpage.click_save
  budgetpage.exit_budget_page
end

Given("I am on the transaction page") do
  homepage.click_transaction_button
  transactionpage.transaction_page_displayed?
end

When("I enter a transaction") do
  transactionpage.enter_transaction "transaction1", "22334455", "300", "t1 notes"
end

Then("the transaction will be displayed") do
  expect(transactionpage.budget_added?).to be true
end
