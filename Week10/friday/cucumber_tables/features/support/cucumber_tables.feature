Feature: fdate table example

  Scenario: I am able to iterate through data table

  Given I have data table

    | Rob | 28 |
    | Jack | 29 |
    | Giv | 26 |

  Then I should be able to print out all the names and ages
