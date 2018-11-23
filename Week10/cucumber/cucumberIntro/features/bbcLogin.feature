Feature: BBC Login
  Scenario: Inputting correct login credentials
    Given I access the bbc login page
    When I enter a correct username
    And I enter a correct password
    And I click submit
    Then I am logged in and redirected to the homepage

  Scenario: Inputting incorrect login credentials
    Given I access the bbc login page
    When I click submit
    Then I am shown three separate warnings
