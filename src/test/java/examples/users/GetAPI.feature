Feature: validate GET endpoint

@smoke @regression
Scenario: get all user details 
    Given url jsonPlaceholderBaseUrl + '/users'
    When method get
    Then status 200
    
