@ZephyrCase:SCRUM-T1 
Feature: Login
  Scenario: SCRUM-T1
    Given the user is on the login page
    When they enter valid credentials
    Then they should be redirected to the dashboard
