Feature: Data Tables Example
  Scenario: I am able to loop through a data table
    Given I have a data table

    | Name | Role |
    | Dan | Wolf |
    | Elisha | Wolf |
    | Rhys | Hunter |
    | Tom | Dead |
    | Rob | Moderator |
    | Robin | Villager |
    | Bakang | Villager |
    | Arun | Villager |
    | Michael | Villager |
    | Pinda | Villager |

    Then I am able to print out name and role to the command line
