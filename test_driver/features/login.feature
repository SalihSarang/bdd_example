Feature: Login feature
    As a user 
    I want to log into the app
    So that I can access my account

    Scenario: Successfull login
        Given I open the app
        When I enter "testuser@gmail.com" into the email field
        And I enter "password123" into the password field
        And I tap the login button
        Then I should see the home screen