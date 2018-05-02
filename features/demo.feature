Feature: Demo Feature

    Scenario: Login and Registration page
        Given I am on Inbox home page
        When I enter "SomeUserName", "WrongPassword" in Login
        Then I click Ieiet button
        And I see Alert Message
        Then I click Inbox logo button
        And I am at Inbox home page
        Then I open Registration page
        When I enter "FakeUserName", "FakeName", "FakeLastName", "FakePassword" in Registration fields
        And I check User Agreement checkbox
        Then I click Pabeigt button
        And I am on Security popup
        Then I click Atcelt button
        