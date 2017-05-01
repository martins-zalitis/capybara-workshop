Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I click Try Now
        And I enter demo@somethng.com in SignUp email
        And I enter parole112 in SignUp passwords
        And I enter demoProject in SignUp project name
        Then I cancel SignUp

    Scenario: Login
        Given I am on Appimation home page
        When I click Login
        And I enter martins1@tdlbox.com in Login email
        And I enter Parole12 in Login password
        And I click form Login
        Then I am logged in as email martins1@tdlbox.com
