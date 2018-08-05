Given("I can open the app") do
  expect(homepage.check_homepage_displayed?).to be true
end

When("I click on the budget section") do
  homepage.click_budget_button
end

Then("the budget page will be dislayed") do
  expect(budgetpage.budget_page_displayed?).to be true

end

Given("I am on the budget page") do
  homepage.click_budget_button
end

When("I enter a budget") do
  budgetpage.enter_budget "firstBudget", "9600"
end

When("I click save") do
  budgetpage.click_save
end

Then("the budget will be displayed") do
  expect(budgetpage.budget_added?).to be true
end
