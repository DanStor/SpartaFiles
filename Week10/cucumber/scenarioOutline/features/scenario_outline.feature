Feature: Scenario Outline with data tables
  Scenario Outline: Using an example table can make your tests drier and more dynamic
    Given I have more than one data row in my tables
    And It includes <name> and <age>
    Then I can print the <name> and <age>

  Examples:

  | name | age |
  | Rob | 28 |
  | Bakang | 21 |
  | Robin | 23 |
