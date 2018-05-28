Feature: Demo Feature

    Scenario: Open SignUp Page
        Given I am on Apimation home page
        When I click SignUp button
        And I check if SignUp view is visible
        Then I fill out Sign Up form
        And I close SignUp view
        Then I validate if SignUp view is closed

    Scenario: Open Registration page
        Given I am on Apimation home page
        When I click LogIn button
        And I check if LogIn view is visible
        Then I fill out Log In form
        And I try to Sign in
        Then I validate if error is visible