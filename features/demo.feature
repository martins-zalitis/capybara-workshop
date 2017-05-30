Feature: Negative SignUp Tests

    Scenario: SignUp emial no @..
        Given I am on Appimation home page
        When I submit signup details
        Then I see Appimation home page

    Scenario: SignUp no email
        Given I am on Appimation home page
        When I submit no_email details
        Then I see Appimation home page

    Scenario: SignUp no password
        Given I am on Appimation home page
        When I submit no_password details
        Then I see Appimation home page

    Scenario: Login empty login
        Given I am on Appimation home page
        When I submit empty_login details
        Then I see Appimation home page

    Scenario: Login invalid combo
        Given I am on Appimation home page
        When I submit invalid_login details
        Then I see Appimation home page
