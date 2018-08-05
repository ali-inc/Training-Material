Feature: I am able to add a budget

  As a savvy shopper
  I want to create a budget
  So that I can save even more money

  @open_budget_page
  Scenario: I am able to open the app and navigate to the budget section
    Given I can open the app
    When I click on the budget section
    Then the budget page will be dislayed

  @add_budget
  Scenario: I am able to add a budget
    Given I am on the budget page
    When I enter a budget
    And I click save
    Then the budget will be displayed

  @add_transaction
  Scenario: I am able to add a transaction
    Given I have a budget
    And I am on the transaction page
    When I enter a transaction
    And I click save
    Then the transaction will be displayed
