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

