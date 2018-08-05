Feature: Admin features

  @approve_profile
  Scenario: Approve profile
    Given I am logged in as an admin
    When I click approve on a pending profile
    Then Profile should be approved

  @reject_profile
  Scenario: Reject profile
    Given I am logged in as an admin
    When I click reject on a pending profile
    Then Profile should be rejected

  @share_profile
  Scenario: Share profile
    Given I am logged in as an admin
    When I click share on a profile
    And I copy share link
    And I navigate to the share link
    Then I should be on the shared profile page

  @reject_approved_profile
  Scenario: Reject an approved profile
    Given I am logged in as an admin
    When I click reject on an approved profile
    Then Profile should be rejected

  @add_new_section
  Scenario: Adding a new section
    Given I am logged in as an admin
    And I navigate to sections
    When I click create
    And I fill in title
    And I fill in description
    And I fill in skills
    And I click save
    Then Section should be created

  @edit_section
  Scenario: Edit a section
    Given I am logged in as an admin
    And I navigate to sections
    When I click edit
    And I fill in title
    And I fill in description
    And I fill in skills
    And I click save
    Then Section should be updated

  @cancel_delete_section
  Scenario: Canceling delete section
    Given I am logged in as an admin
    And I navigate to sections
    When I click on delete
    And I cancel
    Then Section should not be deleted

  @delete_section
  Scenario: Removing a section
    Given I am logged in as an admin
    And I navigate to sections
    When I click on delete
    And I click confirm
    Then Section should be destroyed
