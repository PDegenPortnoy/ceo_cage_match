Feature: Home Page

  Scenario: Home page shows two CEOs
    Given there are two CEOs in the system
    When I am on the home page
    Then I should see two CEOs

  Scenario: Vote that I like one CEO
    Given there are two CEOs in the system
    When I am on the home page
    When I click "Like" for the first CEOs
    Then That CEO should "win" the contest
    And get a "Like" vote

