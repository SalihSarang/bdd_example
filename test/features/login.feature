Feature: Login

  Scenario: Successful login
    Given the app is running
    When I enter {'testuser@gmail.com'} into {'emailField'}
    And I enter {'password123'} into {'passwordField'}
    And I tap {'loginButton'}
    Then I see {'Welcome, testuser!'}

  Scenario: Failed login with invalid credentials
    Given the app is running
    When I enter {'wronguser@gmail.com'} into {'emailField'}
    And I enter {'wrongpass'} into {'passwordField'}
    And I tap {'loginButton'}
    Then I see {'Invalid credentials'}

  Scenario: Empty email field
    Given the app is running
    When I enter {''} into {'emailField'}
    And I enter {'password123'} into {'passwordField'}
    And I tap {'loginButton'}
    Then I see {'Email cannot be empty'}

  Scenario: Empty password field
    Given the app is running
    When I enter {'testuser@gmail.com'} into {'emailField'}
    And I enter {''} into {'passwordField'}
    And I tap {'loginButton'}
    Then I see {'Password cannot be empty'}

  Scenario: Invalid email format
    Given the app is running
    When I enter {'invalidemail'} into {'emailField'}
    And I enter {'password123'} into {'passwordField'}
    And I tap {'loginButton'}
    Then I see {'Enter a valid email'}

  Scenario: Password too short
    Given the app is running
    When I enter {'testuser@gmail.com'} into {'emailField'}
    And I enter {'123'} into {'passwordField'}
    And I tap {'loginButton'}
    Then I see {'Password too short'}

  Scenario: Login button disabled when fields empty
    Given the app is running
    Then the login button is disabled
