Feature: Profiles features

  @login
  Scenario: Login to account
    Given I am on the login page
    When I enter valid username
    And I enter valid password
    And I click login
    Then I should be logged in

  @incorrect_login
  Scenario Outline: Incorrect login details
    Given I am on the login page
    When I enter invalid username <username>
    And I enter invalid password <password>
    And I click login
    Then I should get a login error message <error>

  Examples:
  | username | password | error |
  | ttest@spartaglobal.com | wrong | *Your details are incorrect |
  | ttest@sparta.com | wrong | *Your details are incorrect |

@create_profile
Scenario: Create a profile
  Given I am logged in
  When I click create profile
  And I fill in summary and degree
  And I fill in stream
  And I select information to include
  And I select profile status
  And I click save
  Then The profile should be created

@create_profile_errors
Scenario Outline: Incomplete profile creation
  Given I am logged in
  When I click create profile
  And I incorrectly enter summary <summary>
  And I incorrectly enter degree <degree>
  And I click save
  Then I should receive corresonding profile error <error>

  Examples:
  | summary | degree | error                  |
  |         | compsci| Summary can't be blank |
  | 1       |        | Degree can't be blank  |
  |         | comp   | Degree is too short    |

  @view_profile
  Scenario: View profile
    Given I am logged in
    When I click on a profile
    Then I should be redirected to that profile

  @edit_profile
  Scenario: Edit Profile
    Given I am logged in
    When I click edit profile
    And I fill in summary and degree
    And I fill in stream
    And I select information to include
    And I select profile status
    And I click save
    Then The edited profile should be saved

@edit_profile_errors
Scenario Outline: Invalid profile editing
  Given I am logged in
  When I click edit profile
  And I incorrectly enter summary <summary>
  And I incorrectly enter degree <degree>
  And I click save
  Then I should receive corresonding profile error <error>

  Examples:
    | summary | degree   |        error           |
    |         | compo    | Summary can't be blank |
    | 1       |          | Degree can't be blank  |
    | 1       | comp     | Degree is too short    |

  @download_profile
  Scenario: Download profile
    Given I am logged in
    When I click download profile
    Then The profile should be downloaded

  @delete_profile
  Scenario: Delete profile
    Given I am logged in
    When I click delete profile
    Then The profile should be destroyed


  @check_footer
  Scenario: Check if footer disappears when resizing
    Given I am logged in
    When I resize the window
    Then The footer should disappear
