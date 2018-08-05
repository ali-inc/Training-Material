Feature: Hooks and Tags

@tag1
Scenario: Check for a name
  Given have a before hook in place
  Then I can validate the information in the before hook

@tag2
Scenario: An example of using tags
  Given I use a tag
  Then only this test will run
