Feature: User log in
  As a user
  I want to log into the website
  So that I can see my account (and so that people logged in cannot)

  Scenario: Not logged in
    Given the website
    When I am not logged in
    And I search for a CV
    Then I am shown nothing

  Scenario: Logging in as trainee
    Given the website
    When I am not logged in
    And I enter the details of a trainee
    Then I am logged in as a trainee

  Scenario: Logging out as trainee
    Given the website
    When I am logged in as a trainee
    And I click log out
    Then I am logged out

  Scenario: Logging out as trainer
    Given the website
    When I am logged in as a trainer
    And I click log out
    Then I am logged out


  Scenario: Logging out as training manager
    Given the website
    When I am logged in as a training manager
    And I click log out
    Then I am logged out

  Scenario: Logging in as trainer
    Given the website
    When I am not logged in
    And I enter the details of a trainer
    Then I am logged in as a trainer

  Scenario: Logging in as training manager
    Given the website
    When I am not logged in
    And I enter the details of a training manager
    Then I am logged in as a training manager

  Scenario: Trainee logged in
    Given the website
    When I am logged in as a trainee
    Then I am shown my userpage
    And am able to upload my CV
    And am able to update my account
    And I am not able to see any flags on my account

  Scenario: Trainer logged in
    Given the website
    When I am logged in as a trainer
    Then I am shown my userpage
    And am able to search for CVs
    And am able to update my account
    And I am able to add flags to trainee accounts
    And I am not able to see flags added by other trainers

  Scenario: Training manager logged in
    Given the website
    When I am logged in as a training manager
    Then I am shown my userpage
    And am able to search for CVs
    And am able to update my account
    And I am able to add flags to trainee accounts
And I am able to see flags added by other trainers