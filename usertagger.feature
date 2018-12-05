Feature: User tagging/flagging
  As an admin
  I want to flag users
  So that I can receive updates on them and can elevate concerns

  Scenario: Flag user for updates, upload
    Given a user
    When I flag the users
    And the user uploads a CV
    Then I receive an email
    And it tells them they have uploaded a CV

  Scenario: Flag user for updates, delete
    Given a user
    When I flag the users
    And the user deletes a CV
    Then I receive an email
    And it tells them they have deleted a CV

  Scenario: Flag CV as inappropriate
    Given a user
    When I flag a user's CV as inappropriate
    Then the training manager receives an email
    And when they log in they see the user is flagged