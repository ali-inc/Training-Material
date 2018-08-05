Feature: BBC Login

  Scenario: Inputting incorrect user credentials shows an error
    Given I access the BBC login page
    And I input an incerrect username
    And I input an incorrect password
    When I try to login
    Then I receive an error message

  Scenario: Inputting incorrect user credentials shows an error
    Given I access the BBC login page
    And I input a cerrect username
    And I input a correct password
    When I try to login
    Then I should be logged in
