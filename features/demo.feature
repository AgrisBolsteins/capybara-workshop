Feature: Demo Feature

    Scenario: Login and Registration page
        Given I am on Inbox home page
        When I enter "SomeUserName", "WrongPassword" in Login
        Then I click Ieiet button
        And I see Alert Message
        Then I click Inbox logo button
        And I am at Inbox home page
        Then I open Registration page
        And I enter "FakeUserName", "FakeName", "FakeLastName", "FakePassword" in Registration fields
        
        