Feature: Trainer finding cv
  As a trainer
  I want to be able to find a trainee's CV
  So that I can monitor their progress

  Scenario: One CV, the user's
    Given a database with 1 CV
    And that CV is the trainee's
    And given the website
    When I search for the trainee
    Then it shows me their CV and the date they updated them 

  Scenario: N CVs, including 1 of the trainee's
    Given a database with N CVs
    And one of them is the trainee's
    And given the website
    When I search for the trainee
    Then it shows me their CV and the date they updated them 

  Scenario: N CVs, including M of the trainee's
    Given a database with N CVs
    And M of them are the trainee's
    And given the website
    When I search for the trainee
    Then it shows me their CVs and the dates they updated them 

  Scenario: N CVs, including 0 of the trainee's
    Given a database with N CVs
    And none of them are the trainee's
    And given the website
    When I search for the trainee
    Then it shows me they have not uploaded a CV

  Scenario: 0 CVs
    Given a database with 0 CVs
    And given the website
    When I search for the trainee
    Then it shows me they have not uploaded a CV

  Scenario: N CVs including the trainee's but the trainee is deleted
    Given a database with N CVs
    And the trainee had previously uploaded a CV
    And the trainee had then been deleted
    And given the website
    When I search for the trainee
    Then it shows me that the user does not exist

  Scenario: N CVs not including the trainee's and the trainee is deleted
    Given a database with N CVs
    And the trainee had not previously uploaded a CV
    And the trainee had then been deleted
    And given the website
    When I search for the trainee
    Then it shows me that the user does not exist

  Scenario: 0 CVs and the trainee is deleted
    Given a database with 0 CVs
    And the trainee had not previously uploaded a CV
    And the trainee had then been deleted
    And given the website
    When I search for the trainee
    Then it shows me that the user does not exist