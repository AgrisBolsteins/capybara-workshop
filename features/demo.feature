Feature: Demo Feature

    Scenario: Open Sign Up page
        Given I am on Apimation home page
        When I click SignUp button
        And I check if SignUp view is visible
        Then I enter "agrisbolsteins@testdevlab.com", "password", "This_Is_Project_name" in SignUp fields
        And I close SignUp view
        Then I validate if Signup view is closed

    Scenario: Open Registration page
        Given I am on Apimation home page
        When I click LogIn button
        Then I enter "fakeEmail@gmail.com", "fakePassword" in LogIn fields
        And I try to Sign in
        Then I validate if error is visible

        