Feature: Home Page

  Scenario: Home page shows two CEOs
    Given there are two CEOs in the system
    When I am on the home page
    Then I should see two CEOs

    #Scenario: Vote that I like one CEO
    #ScGiven there are two CEOs in the system
    #ScWhen I click "like" for one of the CEOs
    #ScThen That CEO should "win" the contest
    #ScAnd get a "Like" vote

