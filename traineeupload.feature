Feature: Trainee uploading cv
  As a trainee
  I want to be able to upload my CV
  So that it can be sent off by the sales department

  Scenario: No other CVs
    Given an empty database
    And given the website
    When I upload a CV
    Then the database has one CV
    And it is accessible by me
    And it is accessible by the sales department

  Scenario: N other CVs
    Given a database with N CVs
    And given the website
    When I upload a CV
    Then the database has N+1 CV
    And it is accessible by me
    And it is accessible by the sales department

  Scenario: 1 other CV and it is yours
    Given a database with 1 CVs
    And it is your old CV
    And given the website
    When I upload a CV
    Then the database has 2 CV
    And both are accessible by me
    And the latest is accessible by the sales department

  Scenario: N other CVs, and 1 is yours
    Given a database with N CVs
    And 1 is your old CV
    And given the website
    When I upload a CV
    Then the database has N+1 CV
    And both of mine are accessible by me
    And the latest of mine is accessible by the sales department