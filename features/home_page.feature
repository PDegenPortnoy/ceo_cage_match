Feature: Home Page

  Scenario: Home page shows two CEOs
    Given there are two CEOs displayed
    When I am on the home page
    Then I should see two CEOs
