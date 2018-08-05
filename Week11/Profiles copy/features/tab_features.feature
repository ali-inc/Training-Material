Feature: tab functions

  @create_project
  Scenario: Create project
    Given I am logged in
    And I navigate to projects
    And I click create
    When I fill in title
    And I fill in description
    And I click save
    Then Project should be created

  @incorrect_project
  Scenario Outline: Invalid project creation
    Given I am logged in
    And I navigate to projects
    And I click create
    When I incorrectly fill in title <title>
    And I incorrectly fill in description <desc>
    And I click save
    Then Should output project errors <error>

    Examples:
      | title   | desc  | error                      |
      |     1   |   1   | Title is too short         |
      |         | comp  | Title can't be blank       |
      | 123456  |       | Description can't be blank |



  @edit_project
  Scenario: Edit project
    Given I am logged in
    And I navigate to projects
    And I click on a project title
    When I fill in title
    And I fill in description
    And I click save
    Then project should be updated

  @cancel_project
  Scenario: Cancel delete project
    Given I am logged in
    And I navigate to projects
    When I click on delete
    And I cancel
    Then Project shouldn't be deleted

  @destroy_project
  Scenario: Delete project
    Given I am logged in
    And I navigate to projects
    When I click on delete
    And I click confirm
    Then Project should be deleted

  @create_employment
  Scenario: Create employment
    Given I am logged in
    And I navigate to employment
    And I click create
    When I fill in company
    And I fill in role
    And I fill in start date
    And I fill in end date
    And I fill in description
    And I click save
    Then Employment should be created

  @edit_employment
  Scenario: Edit employment
    Given I am logged in
    And I navigate to employment
    And I click on employment title
    When I fill in company
    And I fill in role
    And I fill in start date
    And I fill in end date
    And I fill in description
    And I click save
    Then Employment should be updated

  @incorrect_employment
  Scenario Outline: Invalid employment creation
    Given I am logged in
    And I navigate to employment
    And I click create
    When I incorrectly fill in company <company>
    And I incorrectly fill in role  <role>
    And I incorrectly fill in start date <start_date>
    And I incorrectly fill in end date <end_date>
    And I incorrectly fill in description <description>
    And I click save
    Then I should recieve employment creation error <error>

    Examples:
    | company | role     | start_date | end_date | description | error |
    |         | dictator | 23071994 | 23072018 | Steve         | Company can't be blank |
    | com     | dictator | 23071994 | 23072018 | Steve         | Company is too short |
    | Sparta  |          | 23071994 | 23072018 | Steve | Role can't be blank |
    | Sparta  | a        | 23071994 | 23072018 | Steve | Role is too short |
    | Sparta  | dictator |          | 23072018 | Steve | Start date can't be blank |
    | Sparta  | dictator | 23071994 |          | Steve | End date can't be blank |
    | Sparta  | dictator | 23072045 | 23072046 | Steve | Start date must be on or before |
    | Sparta  | dictator | 23072045 | 23072046 | Steve | End date must be on or before |
    | Sparta  | dictator | 23071994 | 22071994 | Steve | End date must be after |
    | Sparta  | dictator | 23071994 | 22071994 | Steve | Start date must be before |
    | Sparta  | dictator | 23071994 | 24071998 |       | Description can't be blank |

  @cancel_employment
  Scenario: Cancel delete employment
    Given I am logged in
    And I navigate to employment
    When I click on delete
    And I cancel
    Then Employment shouldn't be deleted

  @delete_employment
  Scenario: Delete Employment
    Given I am logged in
    And I navigate to employment
    When I click on delete
    And I click confirm
    Then Employment should be deleted

  @create_education
  Scenario: Create education
    Given I am logged in
    And I navigate to education
    And I click create
    When I fill in institution
    And I fill in course
    And I fill in start date
    And I fill in end date
    And I fill in Description
    And I click save
    Then Education should be created

  @edit_education
  Scenario: Edit education
    Given I am logged in
    And I navigate to education
    And I click education title
    When I fill in institution
    And I fill in course
    And I fill in start date
    And I fill in end date
    And I fill in Description
    And I click save
    Then Education should be updated

  @incorrect_education
  Scenario Outline: Invalid education creation
    Given I am logged in
    And I navigate to education
    And I click create
    When I incorrectly fill in institution <institution>
    And I incorrectly fill in course <course>
    And I incorrectly fill in start date <start_date>
    And I incorrectly fill in end date <end_date>
    And I incorrectly fill in description <description>
    And I click save
    Then I should recieve the corresponding education errors <error>
    Examples:
      | institution | course | start_date | end_date | description | error |
      | | dictator | 23071994 | 23072018 | Steve | Institution can't be blank |
      | com | dictator | 23071994 | 23072018 | Steve | Institution is too short |
      | Sparta |  | 23071994 | 23072018 | Steve | Course can't be blank |
      | Sparta | a | 23071994 | 23072018 | Steve | Course is too short |
      | Sparta | dictator |  | 23072018 | Steve | Start date can't be blank |
      | Sparta | dictator | 23071994 |  | Steve | End date can't be blank |
      | Sparta | dictator | 23072045 | 23072046  | Steve | Start date must be on or before |
      | Sparta | dictator | 23072045 | 23072046  | Steve | End date must be on or before |
      | Sparta | dictator | 23071994 | 22071994 | Steve | End date must be after |
      | Sparta | dictator | 23071994 | 22071994 | Steve | Start date must be before |
      | Sparta | dictator | 23071994 | 24071998 |  | Description can't be blank |
  @cancel_delete_education
  Scenario: Cancel delete Education
    Given I am logged in
    And I navigate to education
    When I click on delete
    And I cancel
    Then education should not be destroyed

  @delete_education
  Scenario: Delete Education
    Given I am logged in
    And I navigate to education
    And I click on delete
    When I click confirm
    Then education should be destroyed

  @create_certificate
  Scenario: Create certification
    Given I am logged in
    And I navigate to certification
    And I click create
    When I fill in title
    And I fill in description
    And I click save
    Then Certification should be created

  @edit_certificate
  Scenario: Edit certification
    Given I am logged in
    And I navigate to certification
    And I click on certification title
    When I fill in title
    And I fill in description
    And I click save
    Then Certification should be updated

  @incorrect_certificate
  Scenario Outline: Invalid certification creation
    Given I am logged in
    And I navigate to certification
    And I click create
    When I incorrectly fill in title <title>
    And I incorrectly fill in description <desc>
    And I click save
    Then I should receive the corresponding certification error <error>

    Examples:
    | title | desc              | error                      |
    |       | All about testing | Title can't be blank       |
    | ISTQ  | All about testing | Title is too short         |
    | ISTQB |                   | Description can't be blank |

  @cancel_delete_certificate
  Scenario: Cancel delete Certification
    Given I am logged in
    And I navigate to certification
    When I click on delete
    And I cancel
    Then certification should not be destroyed

  @delete_certificate
  Scenario: delete certification
    Given I am logged in
    And I navigate to certification
    When I click on delete
    And I click confirm
    Then certificate should be deleted

  @create_custom_section
  Scenario: create new custom section
    Given I am logged in
    And I navigate to custom section
    And I click create
    When I fill in title
    And I fill in heading
    And I fill in body
    And I click save
    Then Custom section should be created

  @edit_custom_section
  Scenario: edit custom section
    Given I am logged in
    And i navigate to custom section
    And I click on custom section title
    When I fill in title
    And I fill in heading
    And I fill in body
    And I click save
    Then Custom section should be updated

  @incorrect_custom_section
  Scenario Outline: incorrect custom section creation
    Given I am logged in
    And I navigate to custom section
    And I click create
    When I incorrectly fill in title <title>
    And I incorrectly fill in heading <heading>
    And I incorrectly fill in body <body>
    And I click save
    Then I should receive the corresponding custom section error message <error>

    Examples:
    | title | heading | body | error |
    |  | Place of work | Spart Global is a nice company | Title can't be blank |
    | a | Place of work | Spart Global is a nice company | Title is too short |
    | Voluntary Work | Place of work |  | Body can't be blank |

  @cancel_delete_custom_section
  Scenario: Cancel deleting custom section
    Given I am logged in
    And I navigate to custom section
    When I click on delete
    And I cancel
    Then custom section should not be destroyed

  @delete_custom_section
  Scenario: deleting custom section
    Given I am logged in
    And I navigate to custom section
    When I click on delete
    And I click confirm
    Then custom section should be deleted
