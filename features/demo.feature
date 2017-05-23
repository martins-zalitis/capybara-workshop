Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I submit signup details
        Then I see Appimation home page

    Scenario: Open SignUp Page
        Given I am on Appimation home page
        When I submit login details
        Then I see Appimation main page
